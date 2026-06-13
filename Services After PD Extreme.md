# Windows Services after Process Destroyer Extreme

1. BrokerInfrastructure
2. camsvc
3. CoreMessagingRegistrar
4. CryptSvc
5. DcomLaunch
6. DeviceInstall
7. Dhcp
8. DispBrokerDesktopSvc
9. Dnscache
10. LSM
11. swprv
12. netprofm
13. nsi
14. Power
15. RpcSs
16. RpcEptMapper
17. sppsvc
18. StateRepository
19. TextInputManagementService
20. UserManager
21. ProfSvc
22. VSS
23. Audiosrv
24. AudioEndpointBuilder
25. Winmgmt

> [!NOTE]
> **Windows Defender Firewall Service** or **mpssvc** might not delete, see more here [What services might fail to delete](https://github.com/QuakedK/Process-Destroyer/blob/main/What%20services%20might%20fail%20to%20delete.md).

# What remaining Services could technically be disabled or removed?

1. **Capability Access Manager Service** or **camsvc** can be disabled. **(Haven't confirmed deleting it)**
> [!CAUTION]
> If **Capability Access Manager Service** is disabled using you're mic on games, discord or basically anything becomes impossible.

2. **Cryptographic Service** or **CryptSvc** can be deleted.
> [!CAUTION]
> If **Cryptographic Service** is deleted anti-cheats will freak out and stop working.

3. **Display Policy Service** or **DispBrokerDesktopSvc** can be deleted.
> [!CAUTION]
> If **Display Policy Service** is deleted, on Windows 11 24H2+ your monitor's resolution, Hz and position will reset.

4. **DNS Client Service** or **Dnscache** can be deleted.
> [!CAUTION]
> If the **DNS Client Service** is deleted, starting on windows 11 24H2+ and now older versions like 23H2-21H2 through Cumulative Updates then ethernet will stop working.

> [!NOTE]
> The **DNS Client Service** 100% can be deleted with any consequences on Win 11 22H2/Build 22621.525!

5. **Microsoft Software Shadow Copy Provider Service** or **swprv** can be deleted.
> [!CAUTION]
> If **Microsoft Software Shadow Copy Provider Service** is deleted, restore point won't work.

6. **Power Service** can be disabled. **(Haven't confirmed deleting it)**
> [!CAUTION]
> If **Power Service** is disabled Power Plans will be broken.

7. **Volume Shadow Copy Service** or **VSS** can be deleted.
> [!CAUTION]
> If **Volume Shadow Copy Service** is disabled, restore point won't work.

8. **Windows Management Instrumentation Service** or **Winmgmt** can be deleted.
> [!CAUTION]
> If **Windows Management Instrumentation Service** is disabled tools that rely on WMI will not work if disabled, even anticheats tend to break. Confrimed Broken Anticheat: Rocket League

# Other
1. **Software Protection Service** or **sppsvc** can be **set to manual**.
> [!CAUTION]
> If **Software Protection Service** is disabled, the users Windows Key/Licence won't validate and the Windows Watermark will pop up again.



