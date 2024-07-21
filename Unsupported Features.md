# Unsupported or disabled features of Process Destroyer

As Both [Process Destroyer](https://github.com/QuakedK/Process-Destroyer/releases/download/Tweaker/Process-Destroyer-V1.5.bat) & [Oneclick](https://github.com/QuakedK/Oneclick) are meant to be ran together please check out the [Oneclick Changelog](https://github.com/QuakedK/Oneclick/blob/main/Unsupported%20Features.md)

(Nvidia Feature's such as these should be unsupported since Process Destroyer disables Nvidia Container's.)
1. Nvidia Clipping/Shadowplay
2. Nvidia experience/Nvidia App
3. Nvidia Control Panel, If you want it back run [NvControlPanel](https://github.com/QuakedK/Downloads/blob/main/NvControlPanel.bat) in [Nsudo](https://github.com/QuakedK/Downloads/blob/main/NSudoLG.exe)

(Services)
4. BFE
5. mpssvc
6. webthreatdefsvc
7. WpnUserService
8. Dnscache
9. SystemEventsBroker
10. EventSystem
11. AppIDSvc
12. wscsvc
13. NgcCtnrSvc 
14. TimeBrokerSvc
15. WinHttpAutoProxySvc
16. QWAVE
17. seclogon
18. SENS
19. Schedule
20. webthreatdefusersvc
21. hidserv
22. NgcSvc
23. sppsvc
24. AppXSvc
25. edgeupdate
26. edgeupdatem
27. MicrosoftEdgeElevationService
28. SecurityHealthService
29. WinDefend
30. WdNisSvc
31. SamSs
32. VaultSvc
33. LicenseManager
34. gpsvc
35. EventLog 
36. PlugPlay
37. SgrmBroker
38. msiserver 

(Restore Point Creation)
Can't use or create Restore Points.

(Windows Defender)
Enough Said, Use [Windows Security Fixer](https://github.com/QuakedK/Downloads/blob/main/Windows%20Security%20Fixer.bat) if you can't open Windows Security/Defender. Then Download [Dcontrol](https://github.com/QuakedK/Downloads/blob/main/Dcontrol.rar) using Sordum as the password to extract and disable or renebale defender.

(Windows key/licence)
It may bug out and deactivate windows but we can fix this easily with 2 different fast and simple methods!
Method 1, Open Cmd as admin & paste "net start sppsvc" then it should reactivate and paste net stop sppsvc.
Method 2, run [Massgravel](https://github.com/QuakedK/Downloads/blob/main/Free%20Windows%20Key.bat) in [Nsudo](https://github.com/QuakedK/Downloads/blob/main/NSudoLG.exe) and click 1 to activate Windows. Then run [Winkey Afterrun](https://github.com/QuakedK/Downloads/blob/main/Winkey%20Afterrun.bat) to disable services Massgravel might've activated.
If you get a trusted installer error with NSudo Open CMD as admin and paste sc config TrustedInstaller start=auto.



(Task/Task Scheduler)
Since the Service Schedule isn't enabled, things like Msi Afterburner Won't start on startup. You could use [Msi Afterburner Auto Start Reg](https://github.com/QuakedK/Downloads/blob/main/Msi%20Afterburner%20Auto%20Start.reg) or Reenable Schedule with [Schedule Enabler](https://github.com/QuakedK/Downloads/blob/main/Reenable%20Schedule.bat) in [Nsudo](https://github.com/QuakedK/Downloads/blob/main/NSudoLG.exe).

(Windows Search)
Completely Breaks after Process Destroyer, Unless you use [Open Shell](https://github.com/Open-Shell/Open-Shell-Menu)

(Wifi)
Process Destroyer Will break Wifi.

If NSudo is not working run [TrustedInstaller Enabler](https://github.com/QuakedK/Downloads/blob/main/TI%20Enabler.bat) or if you need to Disable it after run [TrustedInstaller Disabler](https://github.com/QuakedK/Downloads/blob/main/TI%20Disabler.bat) or paste sc config TrustedInstaller start=auto into cmd as admin!

(.Net Runtimes Install)
You need to open [Windows Installer Enable](https://github.com/QuakedK/Downloads/blob/main/Windows%20Installer%20Enable.bat) in [Nsudo](https://github.com/QuakedK/Downloads/blob/main/NSudoLG.exe) to install you're needed runtimes! [Windows Installer Disable](https://github.com/QuakedK/Downloads/blob/main/Windows%20Installer%20Disable.bat)
