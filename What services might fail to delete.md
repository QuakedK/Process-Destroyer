# 1. Windows Defender Firewall Service
**Windows Defender Firewall Service** or **mpssvc** is responsible for helping protect your computer by preventing unauthorized users from gaining access to your computer through the Internet or a network.

> [!NOTE]
> **Windows Defender Firewall Service** needs to be deleted or attempted to be deleted through the registry. Then you must use sc delete to finally get rid of it!
> **Must be deleted using Nsudo of course and you'll need to restore TrustedInstaller**

```bat
:: Delete mpssvc 
reg delete "HKLM\System\CurrentControlSet\Services\mpssvc" /f

:: Finally Delete mpssvc
sc delete mpssvc
```

# Revert TrustedInstaller
1. Go to file explorer and find ```C:\Process Destroyer\Revert\Trusted_Installer_Backup.reg``` and open it up then restart.
2. Now Open [Nsudo](https://github.com/QuakedK/Process-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
3. Then type CMD in the Address Bar, then click run and paste the following commands.

> [!NOTE]
> If the ran within Oneclick, the backup is in ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```.
