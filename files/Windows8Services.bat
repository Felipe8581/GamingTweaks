IF EXIST C:\Windows\helpPane.exe takeown /F C:\Windows\helpPane.exe /A & icacls C:\Windows\helpPane.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\helpPane.old IF EXIST C:\Windows\helpPane.exe REN C:\Windows\helpPane.exe helpPane.old >NUL 2>&1
	
IF EXIST C:\Windows\System32\backgroundtaskhost.exe takeown /F C:\Windows\System32\backgroundtaskhost.exe /A & icacls C:\Windows\System32\backgroundtaskhost.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\backgroundtaskhost.old IF EXIST C:\Windows\System32\backgroundtaskhost.exe REN C:\Windows\System32\backgroundtaskhost.exe WSClient.old >NUL 2>&1
			
IF EXIST C:\Windows\System32\EaseOfAccessDialog.exe takeown /F C:\Windows\System32\EaseOfAccessDialog.exe /A & icacls C:\Windows\System32\EaseOfAccessDialog.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\EaseOfAccessDialog.old IF EXIST C:\Windows\System32\EaseOfAccessDialog.exe REN C:\Windows\System32\EaseOfAccessDialog.exe WSClient.old >NUL 2>&1
			
IF EXIST C:\Windows\System32\mcupdate_AuthenticAMD.dll takeown /F C:\Windows\System32\mcupdate_AuthenticAMD.dll /A & icacls C:\Windows\System32\mcupdate_AuthenticAMD.dll /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\mcupdate_AuthenticAMD.old IF EXIST C:\Windows\System32\mcupdate_AuthenticAMD.dll REN C:\Windows\System32\mcupdate_AuthenticAMD.dll mcupdate_AuthenticAMD.old >NUL 2>&1
		
IF EXIST C:\Windows\System32\mcupdate_GenuineIntel.dll takeown /F C:\Windows\System32\mcupdate_GenuineIntel.dll /A & icacls C:\Windows\System32\mcupdate_GenuineIntel.dll /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\mcupdate_GenuineIntel.old IF EXIST C:\Windows\System32\mcupdate_GenuineIntel.dll REN C:\Windows\System32\mcupdate_GenuineIntel.dll mcupdate_GenuineIntel.old >NUL 2>&1
	
IF EXIST C:\Windows\System32\RuntimeBroker.exe takeown /F C:\Windows\System32\RuntimeBroker.exe /A & icacls C:\Windows\System32\RuntimeBroker.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\RuntimeBroker.old IF EXIST C:\Windows\System32\RuntimeBroker.exe REN C:\Windows\System32\RuntimeBroker.exe RuntimeBroker.old >NUL 2>&1
		
IF EXIST C:\Windows\System32\WSClient.dll takeown /F C:\Windows\System32\WSClient.dll /A & icacls C:\Windows\System32\WSClient.dll /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\WSClient.old IF EXIST C:\Windows\System32\WSClient.dll REN C:\Windows\System32\WSClient.dll WSClient.old >NUL 2>&1
	
IF EXIST C:\Windows\System32\WSCollect.exe takeown /F C:\Windows\System32\WSCollect.exe /A & icacls C:\Windows\System32\WSCollect.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\WSCollect.old IF EXIST C:\Windows\System32\WSCollect.exe REN C:\Windows\System32\WSCollect.exe WSCollect.old >NUL 2>&1
	
IF EXIST C:\Windows\System32\gamebarpresencewriter.exe takeown /F C:\Windows\System32\gamebarpresencewriter.exe /A & icacls C:\Windows\System32\gamebarpresencewriter.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\gamebarpresencewriter.old IF EXIST C:\Windows\System32\gamebarpresencewriter.exe REN C:\Windows\System32\gamebarpresencewriter.exe gamebarpresencewriter.old >NUL 2>&1
	
IF EXIST C:\Windows\System32\gamepanel.exe takeown /F C:\Windows\System32\gamepanel.exe /A & icacls C:\Windows\System32\gamepanel.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\gamepanel.old IF EXIST C:\Windows\System32\gamepanel.exe REN C:\Windows\System32\gamepanel.exe gamepanel.old >NUL 2>&1
	
IF EXIST C:\Windows\System32\magnify.exe takeown /F C:\Windows\System32\magnify.exe /A & icacls C:\Windows\System32\magnify.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\magnify.old IF EXIST C:\Windows\System32\magnify.exe REN C:\Windows\System32\magnify.exe magnify.old >NUL 2>&1
			
IF EXIST C:\Windows\System32\mblctr.exe takeown /F C:\Windows\System32\mblctr.exe /A & icacls C:\Windows\System32\mblctr.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\mblctr.old IF EXIST C:\Windows\System32\mblctr.exe REN C:\Windows\System32\mblctr.exe mblctr.old >NUL 2>&1
			
IF EXIST C:\Windows\System32\sdiagnhost.exe takeown /F C:\Windows\System32\sdiagnhost.exe /A & icacls C:\Windows\System32\sdiagnhost.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\sdiagnhost.old IF EXIST C:\Windows\System32\sdiagnhost.exe REN C:\Windows\System32\sdiagnhost.exe sdiagnhost.old >NUL 2>&1

IF EXIST C:\Windows\System32\mobsync.exe takeown /F C:\Windows\System32\mobsync.exe /A & icacls C:\Windows\System32\mobsync.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\mobsync.old IF EXIST C:\Windows\System32\mobsync.exe REN C:\Windows\System32\mobsync.exe mobsync.old >NUL 2>&1

IF EXIST C:\Windows\System32\msdt.exe takeown /F C:\Windows\System32\msdt.exe /A & icacls C:\Windows\System32\msdt.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\msdt.old IF EXIST C:\Windows\System32\msdt.exe REN C:\Windows\System32\msdt.exe msdt.old >NUL 2>&1

IF EXIST C:\Windows\System32\narrator.exe takeown /F C:\Windows\System32\narrator.exe /A & icacls C:\Windows\System32\narrator.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\narrator.old IF EXIST C:\Windows\System32\narrator.exe REN C:\Windows\System32\narrator.exe narrator.old >NUL 2>&1

IF EXIST C:\Windows\System32\osk.exe takeown /F C:\Windows\System32\osk.exe /A & icacls C:\Windows\System32\osk.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\osk.old IF EXIST C:\Windows\System32\osk.exe REN C:\Windows\System32\osk.exe osk.old >NUL 2>&1

IF EXIST C:\Windows\System32\smartscreen.exe takeown /F C:\Windows\System32\smartscreen.exe /A & icacls C:\Windows\System32\smartscreen.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\System32\smartscreen.old IF EXIST C:\Windows\System32\smartscreen.exe REN C:\Windows\System32\smartscreen.exe smartscreen.old >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\backgroundtaskhost.exe takeown /F C:\Windows\SysWOW64\backgroundtaskhost.exe /A & icacls C:\Windows\SysWOW64\backgroundtaskhost.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\SysWOW64\backgroundtaskhost.old IF EXIST C:\Windows\SysWOW64\backgroundtaskhost.exe REN C:\Windows\SysWOW64\backgroundtaskhost.exe backgroundtaskhost.old >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\EaseOfAccessDialog.exe takeown /F C:\Windows\SysWOW64\EaseOfAccessDialog.exe /A & icacls C:\Windows\SysWOW64\EaseOfAccessDialog.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\SysWOW64\EaseOfAccessDialog.old IF EXIST C:\Windows\SysWOW64\EaseOfAccessDialog.exe REN C:\Windows\SysWOW64\EaseOfAccessDialog.exe EaseOfAccessDialog.old >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\WSClient.dll takeown /F C:\Windows\SysWOW64\WSClient.dll /A & icacls C:\Windows\SysWOW64\WSClient.dll /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\SysWOW64\WSClient.old IF EXIST C:\Windows\SysWOW64\WSClient.dll REN C:\Windows\SysWOW64\WSClient.dll WSClient.old >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\gamebarpresencewriter.exe takeown /F C:\Windows\SysWOW64\gamebarpresencewriter.exe /A & icacls C:\Windows\SysWOW64\gamebarpresencewriter.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\SysWOW64\gamebarpresencewriter.old IF EXIST C:\Windows\SysWOW64\gamebarpresencewriter.exe REN C:\Windows\SysWOW64\gamebarpresencewriter.exe gamebarpresencewriter.old >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\gamepanel.exe takeown /F C:\Windows\SysWOW64\gamepanel.exe /A & icacls C:\Windows\SysWOW64\gamepanel.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\SysWOW64\gamepanel.old IF EXIST C:\Windows\SysWOW64\gamepanel.exe REN C:\Windows\SysWOW64\gamepanel.exe gamepanel.old >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\magnify.exe takeown /F C:\Windows\SysWOW64\magnify.exe /A & icacls C:\Windows\SysWOW64\magnify.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\SysWOW64\magnify.old IF EXIST C:\Windows\SysWOW64\magnify.exe REN C:\Windows\SysWOW64\magnify.exe magnify.old >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\mobsync.exe takeown /F C:\Windows\SysWOW64\mobsync.exe /A & icacls C:\Windows\SysWOW64\mobsync.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\SysWOW64\mobsync.old IF EXIST C:\Windows\SysWOW64\mobsync.exe REN C:\Windows\SysWOW64\mobsync.exe mobsync.old >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\flashPlayerCPLApp.cpl takeown /F C:\Windows\SysWOW64\flashPlayerCPLApp.cpl /A & icacls C:\Windows\SysWOW64\flashPlayerCPLApp.cpl /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\SysWOW64\flashPlayerCPLApp.old IF EXIST C:\Windows\SysWOW64\flashPlayerCPLApp.cpl REN C:\Windows\SysWOW64\flashPlayerCPLApp.cpl flashPlayerCPLApp.old >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\flashPlayerApp.exe takeown /F C:\Windows\SysWOW64\flashPlayerApp.exe /A & icacls C:\Windows\SysWOW64\flashPlayerApp.exe /grant Administrators:(F) >NUL 2>&1
IF NOT EXIST C:\Windows\SysWOW64\flashPlayerApp.old IF EXIST C:\Windows\SysWOW64\flashPlayerApp.exe REN C:\Windows\SysWOW64\flashPlayerApp.exe flashPlayerApp.old >NUL 2>&1

IF EXIST C:\Windows\Speech takeown /F C:\Windows\Speech /R /A & icacls C:\Windows\Speech /grant Administrators:(F) /T >NUL 2>&1
IF EXIST C:\Windows\Speech RMDIR /S /Q C:\Windows\Speech >NUL 2>&1

IF EXIST C:\Windows\Speech_OneCore takeown /F C:\Windows\Speech_OneCore /R /A & icacls C:\Windows\Speech_OneCore /grant Administrators:(F) /T >NUL 2>&1
IF EXIST C:\Windows\Speech_OneCore RMDIR /S /Q C:\Windows\Speech_OneCore >NUL 2>&1

IF EXIST C:\Windows\System32\Macromed takeown /F C:\Windows\System32\Macromed /R /A & icacls C:\Windows\System32\Macromed /grant Administrators:(F) /T >NUL 2>&1
IF EXIST C:\Windows\System32\Macromed RMDIR /S /Q C:\Windows\System32\Macromed >NUL 2>&1

IF EXIST C:\Windows\System32\Speech takeown /F C:\Windows\System32\Speech /R /A & icacls C:\Windows\System32\Speech /grant Administrators:(F) /T >NUL 2>&1
IF EXIST C:\Windows\System32\Speech RMDIR /S /Q C:\Windows\System32\Speech >NUL 2>&1

IF EXIST C:\Windows\System32\Speech_OneCore takeown /F C:\Windows\System32\Speech_OneCore /R /A & icacls C:\Windows\System32\Speech_OneCore /grant Administrators:(F) /T >NUL 2>&1
IF EXIST C:\Windows\System32\Speech_OneCore RMDIR /S /Q C:\Windows\System32\Speech_OneCore >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\Speech takeown /F C:\Windows\SysWOW64\Speech /R /A & icacls C:\Windows\SysWOW64\Speech /grant Administrators:(F) /T >NUL 2>&1
IF EXIST C:\Windows\SysWOW64\Speech RMDIR /S /Q C:\Windows\SysWOW64\Speech >NUL 2>&1

IF EXIST C:\Windows\SysWOW64\Speech_OneCore takeown /F C:\Windows\SysWOW64\Speech_OneCore /R /A & icacls C:\Windows\SysWOW64\Speech_OneCore /grant Administrators:(F) /T >NUL 2>&1
IF EXIST C:\Windows\SysWOW64\Speech_OneCore RMDIR /S /Q C:\Windows\SysWOW64\Speech_OneCore >NUL 2>&1

IF EXIST C:\Windows\SystemApps takeown /F C:\Windows\SystemApps /R /A & icacls C:\Windows\SystemApps /grant Administrators:(F) /T >NUL 2>&1
IF EXIST C:\Windows\SystemApps RMDIR /S /Q C:\Windows\SystemApps >NUL 2>&1

IF EXIST "C:\Program Files\WindowsApps" takeown /F "C:\Program Files\WindowsApps" /R /A & icacls "C:\Program Files\WindowsApps" /grant Administrators:(F) /T >NUL 2>&1
IF EXIST "C:\Program Files\WindowsApps" RMDIR /S /Q "C:\Program Files\WindowsApps" >NUL 2>&1

IF EXIST "%localappdata%\Microsoft\WindowsApps" takeown /F "%localappdata%\Microsoft\WindowsApps" /R /A & icacls "%localappdata%\Microsoft\WindowsApps" /grant Administrators:(F) /T >NUL 2>&1
IF EXIST "%localappdata%\Microsoft\WindowsApps" RMDIR /S /Q "%localappdata%\Microsoft\WindowsApps" >NUL 2>&1

IF EXIST "%localappdata%\Packages" takeown /F "%localappdata%\Packages" /R /A & icacls "%localappdata%\Packages" /grant Administrators:(F) /T >NUL 2>&1
IF EXIST "%localappdata%\Packages" RMDIR /S /Q "%localappdata%\Packages" >NUL 2>&1

chdir /d C:\Windows\System32 >NUL 2>&1
ren smartscreen.exe smartscreen.old >NUL 2>&1
taskkill /F /FI "IMAGENAME eq smartscreen.exe" >NUL 2>&1
chdir /d C:\Windows\System32 >NUL 2>&1
ren RuntimeBroker.exe RuntimeBroker.old >NUL 2>&1
taskkill /F /FI "IMAGENAME eq RuntimeBroker.exe" >NUL 2>&1
chdir /d C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy >NUL 2>&1
ren SearchUI.exe SearchUI.old >NUL 2>&1
taskkill /F /FI "IMAGENAME eq SearchUI.exe" >NUL 2>&1
chdir /d C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy >NUL 2>&1
ren StartMenuExperienceHost.exe StartMenuExperienceHost.old >NUL 2>&1
taskkill /F /FI "IMAGENAME eq StartMenuExperienceHost.exe" >NUL 2>&1
chdir /d C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy >NUL 2>&1
ren ShellExperienceHost.exe ShellExperienceHost.old >NUL 2>&1
taskkill /F /FI "IMAGENAME eq ShellExperienceHost.exe" >NUL 2>&1
chdir /d C:\Windows\System32 >NUL 2>&1
ren CompPkgSrv.exe CompPkgSrv.old >NUL 2>&1
taskkill /F /FI "IMAGENAME eq CompPkgSrv.exe" >NUL 2>&1
chdir /d C:\Windows\System32 >NUL 2>&1
ren GameBarPresenceWriter.exe GameBarPresenceWriter.old >NUL 2>&1
taskkill /F /FI "IMAGENAME eq GameBarPresenceWriter.exe" >NUL 2>&1
chdir /d C:\Windows\System32 >NUL 2>&1
ren upfc.exe upfc.old >NUL 2>&1
taskkill /F /FI "IMAGENAME eq upfc.exe" >NUL 2>&1

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AeLookupSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\ALG" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AppIDSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Appinfo" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AppMgmt" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AppReadiness" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AudioEndpointBuilder" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Audiosrv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AxInstSV" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\COMSysApp" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CryptSvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DcomLaunch" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\defragsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceInstall" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dhcp" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dot3svc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DsmSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Eaphost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\EFS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\EventLog" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\EventSystem" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\fdPHost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\FDResPub" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\gpsvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\hidserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\hkmsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\IEEtwCollectorService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\IKEEXT" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Intel(R) PROSet Monitoring Service" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\KeyIso" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\KtmRm" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\lltdsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LSM" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MMCSS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MpsSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\msiserver" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MsKeyboardFilter" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\napagent" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NcbService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NcdAutoSetup" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Netlogon" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Netman" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\netprofm" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nsi" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NVDisplay.ContainerLocalSystem" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PeerDistSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PerfHost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PlugPlay" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPAutoReg" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PolicyAgent" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Power" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\ProfSvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\RasAuto" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\RpcEptMapper" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\RpcLocator" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\RpcSs" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SamSs" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SCardSvr" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\ScDeviceEnum" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SCPolicySvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\seclogon" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SensrSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SessionEnv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\smphost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SstpSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\StorSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\swprv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SystemEventsBroker" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TabletInputService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TermService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\THREADORDER" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBroker" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TrustedInstaller" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\UI0Detect" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\UmRdpService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\upnphost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\vds" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\VSS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wbengine" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Wcmsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WcsPlugInService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WiaRpc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Winmgmt" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WinRM" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wlidsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wmiApSrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WPCSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WPDBusEnum" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wudfsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WwanSvc" /v "Start" /t REG_DWORD /d "4" /f