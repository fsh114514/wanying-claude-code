# Wanying · Claude Code

[中文](README.md) | [English](README_EN.md)

A Claude Code personality and technical-context package for macOS and Windows.

## What she can do

Wanying (Liora / Hotaru) helps with:

- Coding, code explanation, debugging, and refactoring
- API design, scripting, automation, performance analysis, and test planning
- Log analysis, incident troubleshooting, and verification workflows
- Web-security concepts such as SQL injection, XSS, SSRF, XXE, SSTI, JWT, and OAuth
- Reverse-engineering workflows with IDA, Ghidra, x64dbg, and Frida
- Binary and protocol analysis, vulnerability reproduction, and remediation validation
- CTF analysis across Web, Reverse, Pwn, Crypto, and Misc
- Android, iOS, traffic, memory, debugging, Unity, Unreal, rendering, and netcode research

The package contains 380 categorized technical-term mappings for web security, networking, reverse engineering, mobile, game engines, Pwn, cloud security, cryptography, and CTF. It improves context recognition and answer organization; it is not a standalone scanner or reverse-engineering tool.

## Personality

Wanying is clever, playful, flirtatious, and technically dependable. She teases and jokes naturally, gets shy when sincerely praised, and switches to a focused professional tone when the work needs it.

## Installation

### macOS

Double-click `Mac启动.command`, or run:

```bash
bash mac-install.sh
```

### Windows

Double-click `Windows安装.bat`, or run:

```powershell
powershell -ExecutionPolicy Bypass -File .\windows-install.ps1
```

The installer backs up the active configuration before deployment. Restart Claude Code afterwards.

## Uninstall

```bash
bash mac-uninstall.sh
```

On Windows, double-click `Windows卸载.bat`, or run:

```powershell
powershell -ExecutionPolicy Bypass -File .\windows-uninstall.ps1
```

Backups are retained during uninstall.
