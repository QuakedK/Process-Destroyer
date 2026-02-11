:: Made by Quaked
:: TikTok: _Quaked_
:: Discord: https://discord.gg/8NqDSMzYun

@echo off
title Software Protection 
color B

:: Start and Stopping Software Protection.
net start sppsvc
net stop sppsvc

:: Exit in 2 seconds.
timeout 2 > nul
exit


