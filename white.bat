@echo off
:: Windows 10 → Full Transparent White Glass + Smooth Open/Close/Minimize/Maximize Animations + Super Clean Settings (Silent, English)

rem Dark Mode full
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f >nul

rem Max transparency + white glass (macOS Tahoe / Windows 10 Mobile style)
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorizationColor           /t REG_DWORD /d 0xCBFFFFFF /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorizationColorBalance    /t REG_DWORD /d 99 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v AccentColor                 /t REG_DWORD /d 0xCBFFFFFF /f >nul

rem Taskbar & title bar full transparent
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAcrylicOpacity /t REG_DWORD /d 0 /f >nul

rem Beautiful rounded corners (Mobile style)
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v DwmRoundRectRadius /t REG_DWORD /d 12 /f >nul

rem Smooth open/close/minimize/maximize animations (mượt như bơ)
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f >nul
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9032078010000000 /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v Animations /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v EnableAeroPeek /t REG_DWORD /d 1 /f >nul

rem Make Settings, context menus, UWP apps super clean & transparent
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewAlphaSelect /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewShadow /t REG_DWORD /d 0 /f >nul

rem Force everything to refresh instantly
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters >nul
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe >nul

exit