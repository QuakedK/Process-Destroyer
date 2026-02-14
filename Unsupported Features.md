# Unsupported or disabled features of Process Destroyer
⚠️ **Please read carefully, we are not responsible for any issues that may occur:**

As Both [Process Destroyer](https://github.com/QuakedK/Process-Destroyer) & [Oneclick](https://github.com/QuakedK/Oneclick) are meant to be ran together please check out the [Oneclick Unsupported List](https://github.com/QuakedK/Oneclick/blob/main/Unsupported%20Features.md)
___

# Restore Point Creation
Can't use or create Restore Points within Windows, however restoring through Advanced Recovery will work.

**Work Around:** 

&nbsp;1. Hold Shift and click Restart.

&nbsp;2. Once in Advanced Recovery, click Troubleshoot -> Advanced Options -> System Restore

Having trouble navigating in Advanced Recovery? Watch this excellent [tutorial!](https://youtube.com/shorts/v1K0BQoV34A?feature=share)
___

# Windows Search
Windows Search completely breaks after Process Destroyer, Unless you use [Open Shell](https://github.com/Open-Shell/Open-Shell-Menu).
___

# Wifi
Process Destroyer will break Wi-Fi and no Oneclick Wi-Fi Fixer won't fix it. **(Only use PD on Ethernet)**
___

# Windows key/licence
Process Destroyer makes Software Protection Service manual meaning, every 6 hours or so the Windows watermark might show up.
However you can either set it back to automatic or use a batch to stop and start it from time to time.

**Method 1**
1. Download [Software Protection](https://github.com/QuakedK/Process-Destroyer/blob/main/Downloads/Software%20Protection.bat).
2. Open it when needed!

**Method 2**
1. Open [Nsudo](https://github.com/QuakedK/Process-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following commands.
```
:: Make Software Protection Service Automatic.
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "2" /f
```
___

# Windows Installer
Process Destroyer disables the Windows Installer service, meaning the installation of some programs won't work.
However the service can easily be re-enabled by following these steps!
1. Open [Nsudo](https://github.com/QuakedK/Process-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following commands.
```
:: Enable msiserver.
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msiserver" /v "Start" /t REG_DWORD /d "3" /f
```
___

