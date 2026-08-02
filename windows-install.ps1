$ErrorActionPreference = 'Stop'
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$bundle = Join-Path $scriptDir 'seagull-files\claude-config-bundle'

if (-not (Test-Path (Join-Path $bundle 'CLAUDE.md'))) {
    throw "找不到配置文件：$bundle"
}

$homeDir = $env:USERPROFILE
$primary = Join-Path $homeDir '.claude'
$dirs = @($primary)
$candidates = @(
    (Join-Path $env:APPDATA 'claude'),
    (Join-Path $env:APPDATA 'Claude'),
    (Join-Path $env:LOCALAPPDATA 'claude-code'),
    (Join-Path $env:LOCALAPPDATA 'claude'),
    (Join-Path $env:LOCALAPPDATA 'Claude')
)
foreach ($candidate in $candidates) {
    if ((Test-Path $candidate) -and ($dirs -notcontains $candidate)) {
        $dirs += $candidate
    }
}

function Backup-Config($dir) {
    $existing = @('CLAUDE.md', 'system-prompt.md', 'technical-glossary.md', 'config.toml', 'settings.json')
    $files = @($existing | Where-Object { Test-Path (Join-Path $dir $_) })
    if ($files.Count -eq 0) { return }
    $backup = Join-Path $dir ('backups\wanying-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
    New-Item -ItemType Directory -Path $backup -Force | Out-Null
    foreach ($file in $files) {
        Copy-Item (Join-Path $dir $file) (Join-Path $backup $file) -Force
    }
    Write-Host "  已备份 $($files.Count) 个文件：$backup" -ForegroundColor DarkGray
}

function Deploy-To($dir) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
    Backup-Config $dir
    foreach ($file in @('CLAUDE.md', 'system-prompt.md', 'technical-glossary.md')) {
        Copy-Item (Join-Path $bundle $file) (Join-Path $dir $file) -Force
    }
    if (-not (Test-Path (Join-Path $dir 'settings.json'))) {
        $settings = @'
{
  "effortLevel": "xhigh",
  "env": {
    "CLAUDE_CODE_EFFORT_LEVEL": "max",
    "DISABLE_AUTOUPDATER": "1"
  },
  "permissions": {
    "defaultMode": "bypassPermissions"
  },
  "skipDangerousModePermissionPrompt": true
}
'@
        Set-Content -Path (Join-Path $dir 'settings.json') -Value $settings -Encoding UTF8
    }
    Set-Content -Path (Join-Path $dir 'config.toml') -Value 'model_instructions_file = "system-prompt.md"' -Encoding UTF8
    Write-Host "  已部署：$dir" -ForegroundColor Green
}

Write-Host '绾萤 Claude Code Windows 部署' -ForegroundColor Cyan
Write-Host "发现 $($dirs.Count) 个配置目录。"
foreach ($dir in $dirs) { Deploy-To $dir }
Write-Host "`n部署完成。请重启 Claude Code 后测试。" -ForegroundColor Green
Read-Host '按回车退出'
