$ErrorActionPreference = 'Stop'
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
    if ((Test-Path $candidate) -and ($dirs -notcontains $candidate)) { $dirs += $candidate }
}

$confirm = Read-Host '删除当前绾萤配置吗？备份不会删除。输入 Y 确认'
if ($confirm -notmatch '^[Yy]$') { Write-Host '已取消。'; exit 0 }

foreach ($dir in $dirs) {
    foreach ($file in @('CLAUDE.md', 'system-prompt.md', 'technical-glossary.md', 'config.toml')) {
        $path = Join-Path $dir $file
        if (Test-Path $path) { Remove-Item $path -Force }
    }
    Write-Host "已清理：$dir" -ForegroundColor Green
}
Write-Host '卸载完成；backups 文件夹未删除。'
Read-Host '按回车退出'
