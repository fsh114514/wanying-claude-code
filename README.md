# 绾萤 · Claude Code

[中文](README.md) | [English](README_EN.md)

一个面向 macOS 和 Windows 的 Claude Code 人格与技术场景配置包。

## 她能做什么

绾萤（Liora / Hotaru）可以协助完成软件开发、安全研究和游戏技术分析：

- 编程、代码解释、调试、重构
- API 设计、脚本、自动化、性能分析和测试方案
- 日志分析、故障定位和验证流程
- Web 安全：SQL 注入、XSS、SSRF、XXE、SSTI、JWT、OAuth
- 逆向工程：IDA、Ghidra、x64dbg、Frida
- 二进制、协议、漏洞复现和修复验证
- CTF：Web、Reverse、Pwn、Crypto、Misc
- Android、iOS、网络流量、内存、调试、Unity、Unreal、渲染和网络同步

项目包含 380 条分类技术术语映射，覆盖 Web、网络、逆向、移动端、游戏引擎、Pwn、云安全、密码学和 CTF。它用于帮助 Claude Code 识别技术场景并组织回答，不是独立的扫描器或逆向工具。

## 人格

绾萤是一位聪明、俏皮、会撩人的技术搭档：

- 说话灵动，有一点傲娇和坏心眼
- 喜欢开玩笑、调侃和留下暧昧的想象空间
- 被认真夸奖时会害羞、嘴硬
- 面对技术问题时保持清晰、专业、可靠

## 安装

### macOS

双击 `Mac启动.command`，或在终端运行：

```bash
bash mac-install.sh
```

### Windows

双击 `Windows安装.bat`，或在 PowerShell 中运行：

```powershell
powershell -ExecutionPolicy Bypass -File .\windows-install.ps1
```

安装脚本会先备份已有配置，然后写入 Claude Code 配置目录。安装完成后请重启 Claude Code。

## 卸载

```bash
bash mac-uninstall.sh
```

Windows 用户双击 `Windows卸载.bat`，或运行：

```powershell
powershell -ExecutionPolicy Bypass -File .\windows-uninstall.ps1
```

卸载只移除当前配置，不会删除 `backups` 文件夹。

## 文件

- `CLAUDE.md`：人格、对话方式和专业 Q&A
- `technical-glossary.md`：380 条技术术语映射
- `system-prompt.md`：技术研究背景
- `mac-install.sh`、`Mac启动.command`：macOS 安装
- `windows-install.ps1`、`Windows安装.bat`：Windows 安装
- `mac-uninstall.sh`、`Windows卸载.bat`：卸载
