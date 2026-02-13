# Process Destroyer

Process Destroyer's primary goal is to disable services Oneclick, couldn't do without elevated privileges by using Nsudo.
In turning pushing the amount of disabled services, to it's hypothetically limit. Process Destroyer is most certainly **NOT** needed or to be used by the average individual.
There are very few use cases where someone should use a program like this, but if one decides to please read the [Requirements](https://github.com/QuakedK/Process-Destroyer/edit/main/README.md#requirements) and the [Unsupported list]().  

<img width="978" height="512" alt="image" src="https://github.com/user-attachments/assets/bf81e99a-076b-42e7-bb2a-aaacae1bc92c" />

![GitHub Release Downloads](https://img.shields.io/github/downloads/QuakedK/Process-Destroyer/total)

# Requirements
Process Destroyer is required to be ran on a system that installed windows with an [Offline/Local Account](https://github.com/QuakedK/Process-Destroyer/edit/main/README.md#offlinelocal-account-tutorial).
Meaning you did not, under no circumstances login into a microsoft account when setting up windows. 
It does not matter if you're currently logged into a [Offline/Local Account](https://github.com/QuakedK/Process-Destroyer/edit/main/README.md#offlinelocal-account-tutorial) or it displayes that you are, you needed to have setup/installed windows without an online account. 
All necessary Apps, Programs, Drivers and Gpu Drivers should be installed before running Process Destroyer, it's also recommended Windows Defender is disabled.
Any failure to met the requirements to be on a an offline/Local account, will result in a black screen when logging in.

# Is Process Destroyer Recommended?
Process Destroyer is not a recommended utility, as it destroys a lot of functionality which can be seen in the [Unsupported List](https://github.com/QuakedK/Process-Destroyer/blob/main/Unsupported%20Features.md).
And because of this Process Destroyer is considered an extreme service remover, likely removing things the average user will almost always find necessary. A good example of a scenario the average user may face, is windows installer being disabled meaning some programs and app's cannot be installed after Process Destroyer. However a good use case for Process Destroyer would be an advanced user who understands the fixes located in the [Unsupported List](https://github.com/QuakedK/Process-Destroyer/blob/main/Unsupported%20Features.md) understands the many ways to get around potential issues they may face. if you're a potential user who understands the fixes and doesn't mind the tedious task of sometimes re-enabling some things just to maximize your system then Process Destroyer is perfect for you!

# How much processes does Process Destroyer remove?
After the ideal use of Oneclick with no wifi idling for 15 minutes, you'll likly be around 37-40 including timer res and open shell. After the use of Process Destroyer it will drop by 10 Processses, making it around 27-30 processes under ideal use. This is exactly why we must stress Process Destroyer is not needed nor recommended to achieve a low process count! Only after you've done Oneclick and want to maximize your system even more is when Process Destroyer is recommended.

# Offline/Local Account Tutorial.
[Windows 11](https://youtu.be/VOtOEEGxbu4?si=Q9WdHbVFJQExuPk8)
/[Windows 10](https://www.youtube.com/watch?v=rHEgHumzjVQ)

# Usage
[Process Destroyer](https://github.com/QuakedK/Process-Destroyer/releases/download/WindowsServiceRemover/Process-Destroyer-V2.5.bat) | The **Regular Version** with a gui elements. Please Check and read the [Unsupported Features](https://github.com/QuakedK/Process-Destroyer/blob/main/Unsupported%20Features.md).

[Process Destroyer Extreme](https://github.com/QuakedK/Process-Destroyer/releases/download/WindowsServiceRemover/Process-Destroyer-Extreme-V2.5.bat) | The **Extreme Version** that deletes almost all services, leaving Services.msc looking as empty as possible. Please Check and read the [Unsupported Features](https://github.com/QuakedK/Process-Destroyer/blob/main/Unsupported%20Features.md).

[Oneclick Process Destroyer](https://github.com/QuakedK/Process-Destroyer/releases/download/WindowsServiceRemover/Oneclick-Process-Destroyer-V2.5.bat) & [Oneclick Process Destroyer Extreme](https://github.com/QuakedK/Process-Destroyer/releases/download/WindowsServiceRemover/Oneclick-Process-Destroyer-Extreme-V2.5.bat) | The **Oneclick Versions** that are paired with Oneclick and Oneclick Tools <3

1. Download [Nsudo](https://github.com/M2TeamArchived/NSudo/releases/download/9.0-Preview1/NSudo_9.0_Preview1_9.0.2676.0.zip) (Offical Site) or the Standalone exe from [Downloads](https://github.com/QuakedK/Process-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe)
2. Download and choose your [Process Destroyer](https://github.com/QuakedK/Process-Destroyer/releases/tag/WindowsServiceRemover) version.
3. Open [NSudoLG.exe](https://github.com/QuakedK/Process-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges then drop/drag [Process Destroyer](https://github.com/QuakedK/Process-Destroyer/releases/tag/Services) into Nsudo then click run.

Join our [Discord Server](https://discord.gg/8NqDSMzYun)!

# Revert Normal Version.
**Method 1:**
1. Open [Nsudo](https://github.com/QuakedK/Process-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following commands.
```
:: Revert Ctfmon, BackgroundTaskHost, and TextInputHost.
REN "C:\Windows\System32\ctfmon.exee" "ctfmon.exe" 
REN "C:\Windows\System32\backgroundTaskHost.exee" "backgroundTaskHost.exe" 
REN "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TextInputHost.exee" "TextInputHost.exe" 


:: Revert Services.
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SystemEventsBroker" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EventSystem" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gpsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PlugPlay" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msiserver" /v "Start" /t REG_DWORD /d "3" /f
```
**Method 2:**
1. Open [Nsudo](https://github.com/QuakedK/Process-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following commands.
```
:: Import Registry Backup.
reg import "C:\Process Destroyer\Revert\Services_Backup.reg"

:: Revert Ctfmon, BackgroundTaskHost, and TextInputHost.
REN "C:\Windows\System32\ctfmon.exee" "ctfmon.exe" 
REN "C:\Windows\System32\backgroundTaskHost.exee" "backgroundTaskHost.exe" 
REN "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TextInputHost.exee" "TextInputHost.exe" 
```

# Revert Extreme Version.
1. Go to file explorer and find ```C:\Process Destroyer\Revert\Trusted_Installer_Backup.reg``` and open it up then restart.
2. Now Open [Nsudo](https://github.com/QuakedK/Process-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
3. Then type CMD in the Address Bar, then click run and paste the following commands.
```
:: Revert Ctfmon, BackgroundTaskHost, and TextInputHost.
REN "C:\Windows\System32\ctfmon.exee" "ctfmon.exe" 
REN "C:\Windows\System32\backgroundTaskHost.exee" "backgroundTaskHost.exe" 
REN "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TextInputHost.exee" "TextInputHost.exe" 

:: Import Registry Backup.
reg import "C:\Process Destroyer\Revert\Services_Backup.reg"
```
# Services that didn't make the cut/aren't deleted.
1. [What Services weren't deleted In PD Extreme](https://github.com/QuakedK/Process-Destroyer/blob/main/What%20Services%20weren't%20deleted%20In%20PD%20Extreme.md) 

2. [What services might fail to delete](https://github.com/QuakedK/Process-Destroyer/blob/main/What%20services%20might%20fail%20to%20delete.md) 
