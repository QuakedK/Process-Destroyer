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

# 2. Internet Connection Sharing (ICS) Service
**Internet Connection Sharing (ICS) Service** or **SharedAccess** is responsible for providing network address translation, addressing, name resolution and/or intrusion prevention services for a home or small office network.

> [!NOTE]
> ****Internet Connection Sharing (ICS) Service** or **SharedAccess** is responsible for providing network address translation, addressing, name resolution and/or intrusion prevention services for a home or small office network. Service** appears not to be deleted if [Process Destroyer Extreme](https://github.com/QuakedK/Process-Destroyer/releases/download/WindowsService/Process-Destroyer-Extreme-V2.4.bat) was ran after and within [Oneclick](https://github.com/QuakedK/Oneclick).
> Simply deleting manually after restarting will fix this! **Must be deleted using Nsudo of course and you'll need to restore TrustedInstaller**

```bat
:: Delete SharedAccess
reg delete "HKLM\System\CurrentControlSet\Services\SharedAccess" /f
```

# Revert TrustedInstaller
1. Go to file explorer and find ```C:\Process Destroyer\Revert\Trusted_Installer_Backup.reg``` and open it up then restart.
2. Now Open [Nsudo](https://github.com/QuakedK/Process-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
3. Then type CMD in the Address Bar, then click run and paste the following commands.

> [!NOTE]
> If the ran within Oneclick, the backup is in ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```.
