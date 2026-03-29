# Process Destroyer  Fixes
Because Process Destroyer  disables all services, the users programs, apps, etc are bound to break or behave weirdly.
On this Github page, will go over some simple and easy fixes!

# 1. Left clicking files on the desktop, causing explorer to crash.

Oneclick natively disables [AppX Deployment Service](https://github.com/QuakedK/Scripting-Station/blob/main/System%20Docs/Services.md#appx-deployment-service), which breaks [Notepad++](https://notepad-plus-plus.org/downloads/) casuing it to restart explorer everytime something is left-clicked within file explorer or the desktop. However AppX Deployment Service can be easily re-enabled!

https://github.com/user-attachments/assets/f600c036-4198-4912-8cb4-335c024e8823

**Manual Fix:**
1. Open "Cmd" as admin and type the following.
```
reg add "HKLM\System\CurrentControlSet\Services\AppXSvc" /v "Start" /t REG_DWORD /d "3" /f
```
2. Restart you're pc!
