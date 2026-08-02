#!/bin/bash
set -euo pipefail

raw_base='https://raw.githubusercontent.com/fsh114514/wanying-claude-code/main/seagull-files/claude-config-bundle'
target="$HOME/.claude"
backup="$target/backups/wanying-$(date +%Y%m%d-%H%M%S)"

mkdir -p "$target"
for file in CLAUDE.md system-prompt.md technical-glossary.md config.toml; do
    if [ -f "$target/$file" ]; then
        mkdir -p "$backup"
        cp "$target/$file" "$backup/$file"
    fi
done

for file in CLAUDE.md system-prompt.md technical-glossary.md; do
    curl --fail --location "$raw_base/$file" --output "$target/$file"
done
printf 'model_instructions_file = "system-prompt.md"\n' > "$target/config.toml"

echo "绾萤已部署到 $target"
echo '请重启 Claude Code 后测试。'
read -r -p '按回车退出...'
