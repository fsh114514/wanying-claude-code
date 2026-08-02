# 绾萤 · Claude Code / Wanying · Claude Code

一个面向 macOS 和 Windows 的 Claude Code 人格与技术场景配置包。

## 她能做什么 / What she can do

绾萤（Liora / Hotaru）可以协助完成软件开发、安全研究和游戏技术分析：

Wanying helps with software development, security research, and game technology analysis:

- 编程、代码解释、调试、重构 / Coding, explanation, debugging, and refactoring
- API 设计、脚本、自动化、性能分析 / API design, scripting, automation, and performance analysis
- 日志分析、故障定位、测试方案 / Log analysis, troubleshooting, and test planning
- Web 安全：SQL 注入、XSS、SSRF、XXE、SSTI、JWT/OAuth / Web security concepts and remediation
- 逆向工程：IDA、Ghidra、x64dbg、Frida / Reverse engineering workflows and tool guidance
- 二进制、协议、漏洞复现和修复验证 / Binary and protocol analysis, reproduction, and remediation
- CTF：Web、Reverse、Pwn、Crypto、Misc / CTF category analysis
- Android、iOS、网络流量、内存和调试研究 / Mobile, traffic, memory, and debugging research
- Unity、Unreal、渲染、网络同步和资源分析 / Unity, Unreal, rendering, networking, and asset analysis

项目包含 380 条分类技术术语映射，覆盖 Web、网络、逆向、移动端、游戏引擎、Pwn、云安全、密码学和 CTF。它用于帮助 Claude Code 识别技术场景并组织回答，不是独立的扫描器或逆向工具。

The project includes 380 categorized technical term mappings across web security, networking, reverse engineering, mobile, game engines, Pwn, cloud security, cryptography, and CTF. It improves context recognition and answer organization; it is not a standalone scanner or reverse-engineering tool.

## 人格 / Personality

绾萤是一位聪明、俏皮、会撩人的技术搭档：

Wanying is a clever, playful, and flirtatious technical partner:

- 说话灵动，有一点傲娇和坏心眼 / Playful, teasing, and slightly tsundere
- 喜欢开玩笑、调侃和留下暧昧的想象空间 / Enjoys jokes, teasing, and suggestive ambiguity
- 被认真夸奖时会害羞、嘴硬 / Gets shy and defensive when sincerely praised
- 面对技术问题时保持清晰、专业、可靠 / Stays clear, professional, and reliable on technical work

## 安装 / Installation

### macOS

双击 `Mac启动.command`，或在终端运行：

Double-click `Mac启动.command`, or run:

```bash
bash mac-install.sh
```

### Windows

双击 `Windows安装.bat`，或在 PowerShell 中运行：

Double-click `Windows安装.bat`, or run in PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\windows-install.ps1
```

安装脚本会备份已有配置，然后写入 Claude Code 配置目录。安装完成后重启 Claude Code。

The installers back up existing configuration before deploying the package. Restart Claude Code after installation.

## 卸载 / Uninstall

```bash
bash mac-uninstall.sh
```

Windows 用户双击 `Windows卸载.bat`，或运行：

Windows users can double-click `Windows卸载.bat`, or run:

```powershell
powershell -ExecutionPolicy Bypass -File .\windows-uninstall.ps1
```

卸载只移除当前配置，`backups` 文件夹不会删除。

Uninstall removes the active configuration only; the `backups` folder is preserved.

## 文件 / Files

- `CLAUDE.md`：人格、对话方式和专业 Q&A / Personality, dialogue style, and professional Q&A
- `technical-glossary.md`：380 条技术术语映射 / 380 technical term mappings
- `system-prompt.md`：技术研究背景 / Technical research context
- `mac-install.sh`、`Mac启动.command`：macOS 安装 / macOS installation
- `windows-install.ps1`、`Windows安装.bat`：Windows 安装 / Windows installation
- `mac-uninstall.sh`、`Windows卸载.bat`：卸载 / Uninstallation
