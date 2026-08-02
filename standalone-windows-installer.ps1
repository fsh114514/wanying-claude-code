$ErrorActionPreference = 'Stop'
$rawBase = 'https://raw.githubusercontent.com/fsh114514/wanying-claude-code/main/seagull-files/claude-config-bundle'
$target = Join-Path $env:USERPROFILE '.claude'
$backup = Join-Path $target ('backups\wanying-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))

New-Item -ItemType Directory -Path $target -Force | Out-Null
foreach ($file in @('CLAUDE.md', 'system-prompt.md', 'technical-glossary.md', 'config.toml')) {
    $path = Join-Path $target $file
    if (Test-Path $path) {
        New-Item -ItemType Directory -Path $backup -Force | Out-Null
        Copy-Item $path (Join-Path $backup $file) -Force
    }
}

foreach ($file in @('CLAUDE.md', 'system-prompt.md', 'technical-glossary.md')) {
    Invoke-WebRequest -Uri "$rawBase/$file" -OutFile (Join-Path $target $file)
}
Set-Content -Path (Join-Path $target 'config.toml') -Value 'model_instructions_file = "system-prompt.md"' -Encoding UTF8

Write-Host "绾萤已部署到 $target" -ForegroundColor Green
Read-Host '请重启 Claude Code 后测试；按回车退出'
