@echo off
:: Windows 11 → Full White Glass + Max Transparency + Smooth Animations (2025 ultimate edition)
:: Silent, no spam, works on Win11 22H2 / 23H2 / 24H2 / 25H2


rem Dark mode toàn hệ thống + app
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f >nul

rem Max white-glass transparency (cực trong + trắng sữa nhẹ kiểu macOS Tahoe / Win11 Mobile concept)
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorizationColor           /t REG_DWORD /d 0xCBFFFFFF /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorizationColorBalance    /t REG_DWORD /d 99 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v AccentColor                 /t REG_DWORD /d 0xCBFFFFFF /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f >nul

rem Taskbar + Start + Action Center + Widgets siêu trong suốt
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v UseOLEDTaskbarTransparency /t REG_DWORD /d 1 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAcrylicOpacity /t REG_DWORD /d 0 /f >nul

rem Mica + Acrylic max cho mọi cửa sổ Win11
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ForceEffectMode /t REG_DWORD /d 1 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v EnableWindowColorization /t REG_DWORD /d 1 /f >nul

rem Bo góc chuẩn Win11 đẹp nhất
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v DwmRoundRectRadius /t REG_DWORD /d 12 /f >nul

rem Animation mượt như bơ (open/close/minimize/maximize/snapping)
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v Animations /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9032078010000000 /f >nul

rem Clean Settings + context menu + UWP apps
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewShadow /t REG_DWORD /d 0 /f >nul

rem Apply instantly
taskkill /f /im explorer.exe >nul 2>&1
taskkill /f /im StartMenuExperienceHost.exe >nul 2>&1
start explorer.exe >nul

exit