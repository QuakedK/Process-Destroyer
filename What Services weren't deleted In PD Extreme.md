# 1. Cryptographic Service
**Cryptographic Service** or **CryptSvc** is responsible for checking digital signatures of Windows files, manages root certificates, and is required for Windows Update, drivers, and Store apps. 

> [!CAUTION]
> If **Cryptographic Service** is disabled, updates and certificate validation will fail. Windows protects this service with WRP (Windows Resource Protection), so it can’t easily be removed or disabled. However deleting in the registry works, but in my experince things like services.msc won't work due to weired UAC behavior after disabling CryptSvc. Disabling UAC seems to fix this issue. However most importantly, anti-cheats will freak out and stop working when CryptSvc gets deleted.

```bat
:: Delete CryptSvc (Have verified deleting it)
reg delete "HKLM\System\CurrentControlSet\Services\CryptSvc" /f

:: Disable CryptSvc
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CryptSvc" /v "Start" /t REG_DWORD /d "4" /f

:: Disable UAC
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
```
# 2. Device Install Service 
**Device Install Service** or **DeviceInstall** enables a computer to recognize and adapt to hardware changes with little or no user input.

> [!CAUTION]
> If the **Device Install Service** is deleted from the registry, all major device like Ethernet, Wifi and you're GPU will corrupt and stop working. However if the service is simply disabled no issues will occur!

```bat
:: Delete DeviceInstall (Have verified deleting it)
reg delete "HKLM\System\CurrentControlSet\Services\DeviceInstall" /f

:: Disable DeviceInstall
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DeviceInstall" /f

:: Disable DeviceInstall
sc config DeviceInstall start=disabled
```

# 3. Display Policy Service
**Display Policy Service** or **DispBrokerDesktopSvc** is responsible for managing the connection and configuration of local and remote displays.

> [!CAUTION]
> If **Display Policy Service** is disabled, on Windows 11 24H2+ your monitor's resolution, Hz and position will reset.

```bat
:: Delete DispBrokerDesktopSvc (Haven't verified deleting it)
reg delete "HKLM\System\CurrentControlSet\Services\DispBrokerDesktopSvc" /f

:: Disable DispBrokerDesktopSvc
sc config DispBrokerDesktopSvc start=disabled
```

# 4. Microsoft Software Shadow Copy Provider Service
**Microsoft Software Shadow Copy Provider Service** or **swprv** is responsible for managing software-based volume shadow copies taken by the Volume Shadow Copy service.

> [!CAUTION]
> If **Microsoft Software Shadow Copy Provider Service** is disabled, restore point won't work.

```bat
:: Delete swprv (Haven't verified deleting it)
reg delete "HKLM\System\CurrentControlSet\Services\swprv" /f

:: Disable swprv
sc config swprv start=disabled
```

# 5. Software Protection Service
**Software Protection Service** or **sppsvc** is responsible for managing the download, installation and enforcement of digital licenses for Windows and Windows applications. 

> [!CAUTION]
> If **Software Protection Service** is disabled, the users Windows Key/Licence won't validate and the Windows Watermark will pop up again.

```bat
:: Delete sppsvc (Haven't verified deleting it)
reg delete "HKLM\System\CurrentControlSet\Services\sppsvc" /f

:: Disable sppsvc
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "4" /f
```

# 6. Volume Shadow Copy Service
**Volume Shadow Copy Service** or **VSS** is responsible for managing and implementing Volume Shadow Copies used for backup and other purposes.

> [!CAUTION]
> If **Volume Shadow Copy Service** is disabled, restore point won't work.

```bat
:: Delete VSS (Haven't verified deleting it)
reg delete "HKLM\System\CurrentControlSet\Services\VSS" /f

:: Disable VSS
sc config VSS start=disabled
```

# 7. Windows Management Instrumentation Service
**Windows Management Instrumentation Service** or **Winmgmt** is a core Windows service used for system management and monitoring. 

> [!CAUTION]
> If **Windows Management Instrumentation Service** is disabled tools that rely on WMI will not work if disabled, even anticheats tend to break. Confrimed Broken Anticheat: Rocket League

```bat
:: Delete Winmgmt (Haven't verified deleting it)
reg delete "HKLM\System\CurrentControlSet\Services\Winmgmt" /f

:: Disable Winmgmt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Winmgmt" /v "Start" /t REG_DWORD /d "4" /f
```

