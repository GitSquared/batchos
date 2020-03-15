:START

@echo Off
rem CenterSelf
rem ClearColor
rem CursorShow
Cls
Echo.
Echo Starting BatchOS...

setlocal enabledelayedexpansion

set version=1.1
set longversion=1.103
set BatchOSsystem=B:\sys
set BatchOSbin=B:\bin
set writingWait=50
set PasswordWrong=0
set rebootAsked=false
set Reloading=false
set location=B:\

set rootPass=password
set username=root
set computername=BatchOS
set color1=7
set txtcolor1=0
set color2=8
set txtcolor2=15

subst B: "%APPDATA%\BatchOS"
cd /D B:\

Title BatchOS %longversion%
rem wait 2000

If NOT exist "%APPDATA%\BatchOS\sys\settings.bat" set needSettings=true
If exist "%APPDATA%\BatchOS\sys\settings.bat" call "%BatchOSsystem%\settings.bat"
goto Boot

:Boot
Cls
rem ClearColor
rem PaintScreen 0
rem CursorHide
rem CenterSelf
Echo PMAP: PCID enabled
rem wait %writingWait%
Echo BatchOS Kernel Version 1.0.0: %date% %time% PDT 2011; root:xnu-1699.22.73~1/RELEASE_X86_64
rem wait %writingWait%
Echo vm_page_bootstrap: 987323 free pages and 53061 wired pages
rem wait %writingWait%
Echo kext submap [0xffffff7f8072e000 - 0xffffff8000000000], kernel text [0xffffff8000200000 - 0xffffff800072e000]
rem wait %writingWait%
Echo zone leak detection enabled
rem wait %writingWait%
Echo standard timeslicing quantum is 10000 us
rem wait %writingWait%
Echo mig_table_max_displ = 72
rem wait %writingWait%
Echo TSC Deadline Timer supported and enabled
rem wait %writingWait%
Echo BatchOSACPICPU: ProcessorId=1 LocalApicId=0 Enabled
Echo BatchOSACPICPU: ProcessorId=2 LocalApicId=2 Enabled
Echo BatchOSACPICPU: ProcessorId=3 LocalApicId=1 Enabled
Echo BatchOSACPICPU: ProcessorId=4 LocalApicId=3 Enabled
Echo BatchOSACPICPU: ProcessorId=5 LocalApicId=255 Disabled
Echo BatchOSACPICPU: ProcessorId=6 LocalApicId=255 Disabled
Echo BatchOSACPICPU: ProcessorId=7 LocalApicId=255 Disabled
Echo BatchOSACPICPU: ProcessorId=8 LocalApicId=255 Disabled
rem wait %writingWait%
Echo calling mpo_policy_init for TMSafetyNet
rem wait %writingWait%
Echo Security policy loaded: Safety net for Time Machine (TMSafetyNet)
rem wait %writingWait%
Echo calling mpo_policy_init for Sandbox
rem wait %writingWait%
Echo Security policy loaded: Seatbelt sandbox policy (Sandbox)
rem wait %writingWait%
Echo calling mpo_policy_init for Quarantine
rem wait %writingWait%
Echo Security policy loaded: Quarantine policy (Quarantine)
rem wait %writingWait%
Echo.
Echo MAC Framework successfully initialized
rem wait %writingWait%
Echo using 16384 buffer headers and 10240 cluster IO buffer headers
rem wait %writingWait%
Echo IOAPIC: Version 0x20 Vectors 64:87
rem wait %writingWait%
Echo ACPI: System State [S0 S3 S4 S5] (S3)
rem wait %writingWait%
Echo PFM64 0xf10000000, 0xf0000000
rem wait %writingWait%
Echo [ PCI configuration begin ]
Echo BatchOSIntelCPUPowerManagement: Turbo Ratios 0046
Echo BatchOSIntelCPUPowerManagement: (built 13:08:12 Jun 18 2011) initialization complete
Echo console relocated to 0xf10000000
Echo PCI configuration changed (bridge=16 device=4 cardbus=0)
Echo [ PCI configuration end, bridges 12 devices 16 ]
rem wait %writingWait%
Echo mbinit: done [64 MB total pool size, (42/21) split]
rem wait %writingWait%
Echo Pthread support ABORTS when sync kernel primitives misused
rem wait %writingWait%
Echo com.BatchOS.BatchOSFSCompressionTypeZlib kmod start
Echo com.BatchOS.BatchOSTrololoBootScreen kmod start
Echo com.BatchOS.BatchOSFSCompressionTypeZlib load succeeded
Echo com.BatchOS.BatchOSFSCompressionTypeDataless load succeeded
rem wait %writingWait%
Echo. 
Echo BatchOSIntelCPUPowerManagementClient: ready
Echo BTCOEXIST off
rem wait %writingWait%
Echo wl0: Broadcom BCM4331 802.11 Wireless Controller
Echo 5.100.98.75
rem wait %writingWait%
Echo.
Echo FireWire (OHCI) Lucent ID 5901 built-in now active, GUID c82a14fffee4a086; max speed s800.
rem wait %writingWait%
Echo rooting via boot-uuid from /chosen: F5670083-AC74-33D3-8361-AC1977EE4AA2
rem wait %writingWait%
Echo Waiting on IOProviderClass
rem wait %writingWait%
Echo IOResources IOResourceMatch boot-uuid-media
rem wait %writingWait%
Echo Got boot device = IOService:/BatchOSACPIPlatformExpert/PCI0@0/BatchOSACPIPCI/SATA@1F,2/
rem wait %writingWait%
Echo BatchOSIntelPchSeriesAHCI/PRT0@0/IOAHCIDevice@0/BatchOSAHCIDiskDriver/SarahI@sTheBestDriverIOAHCIBlockStorageDevice/IOBlockStorageDriver/
rem wait %writingWait%
Echo BatchOS SSD TS128C Media/IOGUIDPartitionScheme/Customer@2
rem wait %writingWait%
Echo BSD root: disk0s2, major 14, minor 2
Echo Kernel is LP64
rem wait %writingWait%
Echo IOThunderboltSwitch::i2cWriteDWord - status = 0xe00002ed
Echo IOThunderboltSwitch::i2cWriteDWord - status = 0x00000000
Echo IOThunderboltSwitch::i2cWriteDWord - status = 0xe00002ed
Echo IOThunderboltSwitch::i2cWriteDWord - status = 0xe00002ed
rem wait %writingWait%
Echo BatchOSUSBMultitouchDriver::checkStatus - received Status Packet, Payload 2: device was reinitialized
Echo MottIsAScrub::checkstatus - true, Mott::Scrub
rem wait %writingWait%
Echo [IOBluetoothHCIController::setConfigState] calling registerService
rem wait %writingWait%
Echo AirPort_Brcm4331: Ethernet address e4:ce:8f:46:18:d2
rem wait %writingWait%
Echo IO80211Controller::dataLinkLayerAttachComplete():  adding BatchOSEFINVRAM notification
Echo IO80211Interface::efiNVRAMPublished():  
Echo Created virtif 0xffffff800c32ee00 p2p0
rem wait %writingWait%
Echo BCM5701Enet: Ethernet address c8:2a:14:57:a4:7a
rem wait %writingWait%
Echo Previous Shutdown Cause: %shutdownCause%
Echo NTFS driver 3.8 [Flags: R/W].
rem wait %writingWait%
Echo NTFS volume name BatchOS, version 3.1.
rem wait %writingWait%
Echo DSMOS has arrived
rem wait %writingWait%
Echo en1: 802.11d country code set to 'US'.
Echo en1: Supported channels 1 2 3 4 5 6 7 8 9 10 11 36 40 44 48 52 56 60 64 100 104 108 112 116 120 124 128 132 136 140 149 153 157 161 165
rem wait %writingWait%
Echo MacAuthEvent en1   Auth result for: 00:60:64:1e:e9:e4  MAC AUTH succeeded
Echo MacAuthEvent en1   Auth result for: 00:60:64:1e:e9:e4 Unsolicited  Auth
rem wait %writingWait%
Echo wlEvent: en1 en1 Link UP
Echo AirPort: Link Up on en1
rem wait %writingWait%
Echo en1: BSSID changed to 00:60:64:1e:e9:e4
rem wait %writingWait%
Echo virtual bool IOHIDEventSystemUserClient::initWithTask(task*, void*, UInt32):
set writingWait=400
rem wait %writingWait%
Echo Client task not privileged to open IOHIDSystem for mapping memory (e00002c1)
rem wait 1000
Echo.
rem wait %writingWait%
Echo.
Echo Boot Complete
rem wait 2000
IF "%needSettings%"=="true" goto Setup
goto Login

:Login
Cls
rem CenterSelf
rem PaintScreen %color1%
rem ChangeColor %txtcolor1% %color1%
rem PrintCenter LOGIN 10 %txtcolor1% %color1%
rem ChangeColor %txtcolor1% %color1%
rem Locate 12 29
Echo User : %username%
rem Locate 13 29
Echo Pass :
rem ChangeColor %color2% %color1%
rem PrintBox 10 30 2
rem ChangeColor %txtcolor1% %color1%
rem Locate 13 36
rem CursorShow
rem GetMasked
IF %result%==%rootPass% goto Main
rem PrintCenter WRONG PASSWORD 14 12 %color1%
rem Add %PasswordWrong% 1
set PasswordWrong=%result%
IF %PasswordWrong%==3 goto AccessDenied
rem wait 1000
goto Login

:AccessDenied
Cls
rem PaintScreen 0
rem PrintCenter ACCESS DENIED 12 12 0
rem wait 2000
exit

:Main
Cls
rem CenterSelf
rem PaintScreen %color1%
rem PaintBoxAt 23 1 3 80 %color2%
rem Locate 2 1
rem ChangeColor %txtcolor1% %color1%
Echo Welcome to BatchOS, %username%
Echo.
Echo.
Echo.
Echo.
Echo Loaded up BatchOS %longversion%
Echo.
Echo %NUMBER_OF_PROCESSORS% processors installed
Echo %PROCESSOR_ARCHITECTURE% architecture
rem Locate 1 70
rem ChangeColor %txtcolor2% %color1%
Echo BatchOS %version%

:CommandLine
set locationtmp=%location%
set commandLineMargin=0
:CommandLineLoop
IF defined locationtmp (
set locationtmp=%locationtmp:~1%
set /A commandLineMargin += 1
goto CommandLineLoop
)
set /A commandLineMargin += 2
rem PaintBoxAt 23 1 3 80 %color2%
rem ChangeColor %txtcolor2% %color2%
rem Locate 24 1
echo %location%)
rem Locate 24 %commandLineMargin%
rem CursorShow
set /p result=
rem CursorHide
rem PaintScreen %color1%
rem PaintBoxAt 23 1 3 80 %color2%
rem ChangeColor %txtcolor2% %color2%
rem Locate 24 1
echo %location%)
rem Locate 1 70
rem ChangeColor %txtcolor2% %color1%
Echo BatchOS %version%
rem ChangeColor %txtcolor1% %color1%
rem Locate 2 1

call :ResultQuotesFix

IF /i "%result%"=="exit" goto Goodbye
IF /i "%result%"=="halt" goto Goodbye
IF /i "%result%"=="quit" goto Goodbye
IF /i "%result%"=="reboot" goto Reboot
IF /i "%result%"=="restart" goto Reboot
IF /i "%result%"=="logout" goto Login
IF /i "%result:~0,4%"=="help" goto Help
IF /i "%result%"=="ls" goto Ls
IF /i "%result%"=="list" goto Ls
IF /i "%result%"=="dir" goto Ls
IF /i "%result%"=="cls" goto Main
IF /i "%result%"=="thanks" goto Thanks
IF /i "%result%"=="reset" goto Reset
IF /i "%result%"=="uninstall" goto Uninstall
IF /i "%result%"=="reload" (
set Reloading=true
goto Goodbye
)
IF /i "%result:~0,3%"=="set" goto Set
IF /i "%result:~0,2%"=="cd" goto Cd
IF /i "%result:~0,5%"=="mkdir" goto Mkdir
IF /i "%result:~0,5%"=="rmdir" goto Rmdir
IF /i "%result:~0,2%"=="rm" goto Rm
IF /i "%result:~0,3%"=="ren" goto Rename
IF /i "%result:~0,3%"=="cat" goto Cat
IF /i "%result:~0,2%"=="mv" goto Mv
IF /i "%result:~0,2%"=="cp" goto Cp
IF /i "%result:~0,3%"=="bpm" goto Bpm

for /f %%a in ("%result%") do set tmp=%%a
IF /i exist "%BatchOSbin%\%tmp%.bexe" (
cd /D %BatchOSsystem%
Del "%BatchOSsystem%\settings.bat"
Echo set rootPass=%rootPass% >"%BatchOSsystem%\settings.bat"
Echo set username=%username% >>"%BatchOSsystem%\settings.bat"
Echo set computername=%computername% >>"%BatchOSsystem%\settings.bat"
Echo set color1=%color1% >>"%BatchOSsystem%\settings.bat"
Echo set txtcolor1=%txtcolor1% >>"%BatchOSsystem%\settings.bat"
Echo set color2=%color2% >>"%BatchOSsystem%\settings.bat"
Echo set txtcolor2=%txtcolor2% >>"%BatchOSsystem%\settings.bat"
set rootPass=
call "%BatchOSbin%\%tmp%.bexe"
call "%BatchOSsystem%\settings.bat"
rmdir /S /Q "%BatchOSsystem%\%tmp%"
cd /D %location%
goto CommandLine
)



:UnknowCommand
Echo Unknow command. Use 'help' to see a list of available commands.
goto CommandLine

:Ls
Echo Current working folder : %location%
Echo.
Echo.
Echo Folder content --------------------------------------------
Echo.
dir /B
Echo.
Echo -----------------------------------------------------------
goto CommandLine

:Cd
call :ResultQuotesFix
IF /i "%result%"=="cd" (
Echo Usage :
Echo.
Echo cd [/D] [directory]
Echo cd [/D] ..
Echo cd [/D] ../[directory]

goto CommandLine
)
IF /i "%result:~0,5%"=="cd /?" ( 
Echo Usage :
Echo.
Echo cd [/D] [directory]
Echo cd [/D] ..
Echo cd [/D] ../[directory]

goto CommandLine
)

%result%
set location=%cd%
goto Ls

:Mkdir
call :ResultQuotesFix
IF /i "%result%"=="mkdir" (
Echo Usage :
Echo.
Echo mkdir [drive:][path]

goto CommandLine
)
IF /i "%result:~0,8%"=="mkdir /?" ( 
Echo Usage :
Echo.
Echo mkdir [drive:][path]

goto CommandLine
)

%result%
Echo Directory created.
Echo.
goto Ls

:Rm
call :ResultQuotesFix
IF /i "%result%"=="rm" (
Echo Usage :
Echo.
Echo rm [/P] [/F] [/S] [/A] names

goto CommandLine
)
IF /i "%result:~0,5%"=="rm /?" ( 
Echo Usage :
Echo.
Echo rm [/P] [/F] [/S] [/A] names

goto CommandLine
)
set result=%result:~3%

del /Q %result%
Echo Files deleted.
Echo.
goto Ls

:Rmdir
call :ResultQuotesFix
IF /i "%result%"=="rmdir" (
Echo Usage :
Echo.
Echo rmdir names

goto CommandLine
)
IF /i "%result:~0,8%"=="rmdir /?" ( 
Echo Usage :
Echo.
Echo rmdir names

goto CommandLine
)
set result=%result:~6%

rmdir /Q /S %result%
Echo Directories deleted.
Echo.
goto Ls

:Rename
call :ResultQuotesFix
IF /i "%result%"=="ren" (
Echo Usage :
Echo.
Echo REN [drive:][path]filename1 filename2

goto CommandLine
)
IF /i "%result:~0,6%"=="ren /?" (
Echo Usage :
Echo.
Echo REN [drive:][path]filename1 filename2

goto CommandLine
)

%result%
Echo File renamed.
Echo.
goto Ls

:Mv
call :ResultQuotesFix
IF /i "%result%"=="mv" (
Echo Usage :
Echo.
Echo To move one or more files:
Echo mv [drive:][path]filename1[,...] destination
Echo.
Echo To rename a directory:
Echo mv [drive:][path]dirname1 dirname2

goto CommandLine
)
IF /i "%result:~0,5%"=="mv /?" ( 
Echo Usage :
Echo.
Echo To move one or more files:
Echo mv [drive:][path]filename1[,...] destination
Echo.
Echo To rename a directory:
Echo mv [drive:][path]dirname1 dirname2

goto CommandLine
)
set result=%result:~3%

move /Y %result%
Echo Done.
Echo.
goto Ls

:Cp
call :ResultQuotesFix
IF /i "%result%"=="cp" (
Echo Usage :
Echo.
Echo cp [source] [destination]

goto CommandLine
)
IF /i "%result:~0,5%"=="cp /?" ( 
Echo Usage :
Echo.
Echo cp [source] [destination]

goto CommandLine
)
set result=%result:~3%

xcopy /Y %result%
Echo Done.
Echo.
goto Ls

:Cat
call :ResultQuotesFix
IF /i "%result%"=="cat" (
Echo Usage :
Echo.
Echo cat [file]

goto CommandLine
)
IF /i "%result:~0,6%"=="cat /?" ( 
Echo Usage :
Echo.
Echo cat [file]

goto CommandLine
)
rem PaintScreen %color1%
rem ChangeColor %txtcolor2% %color2%
Echo File content :
Echo.
rem ChangeColor %txtcolor1% %color1%
set result=%result:~4%

more /E "%result%"
rem ChangeColor %txtcolor2% %color2%
Echo.
pause
rem ChangeColor %txtcolor1% %color1%
goto CommandLine

:Thanks
Echo You're welcome !
goto CommandLine

:Reboot
Echo System reboot in 5
rem wait 1000
Echo System reboot in 4
rem wait 1000
Echo System reboot in 3
rem wait 1000
Echo System reboot in 2
rem wait 1000
Echo System reboot in 1
rem wait 1000
set rebootAsked=true
goto Goodbye

:Reset
rem CursorShow
Echo Are you sure ? You will lose all your data and programs.
Echo.
Echo Password :
rem Locate 5 12
rem GetMasked
call :ResultQuotesFix
IF %result%==%rootPass% (

goto Reset1
)

Echo.
Echo Wrong password !
goto CommandLine
:Reset1
Echo.
Echo.
Echo Deleting files...
set BatchOSbin=
set BatchOSsystem=
set color1=
set color2=
set commandLineMargin=
set COMPUTERNAME=
set location=
set longversion=
set MYFILES=
set PasswordWrong=
set rebootAsked=
set Reloading=
set result=
set rootPass=
set txtcolor1=
set txtcolor2=
set USERNAME=
set version=
set writingWait=
cd /D C:\
subst /D B:
Rmdir /S /Q %APPDATA%\BatchOS
Echo.
Echo System reboot in 3
rem wait 1000
Echo System reboot in 2
rem wait 1000
Echo System reboot in 1
rem wait 1000
goto START

:Set
call :ResultQuotesFix
IF /i "%result%"=="set pass" (

goto SetPass
)
IF /i "%result%"=="set user" (

goto SetUser
)
IF /i "%result%"=="set domain" (

goto SetDomain
)
IF /i "%result%"=="set colors" (

goto SetColors
)

Echo Available commands :
Echo.
Echo.
Echo set pass - To change your password
Echo set user - To change your username
Echo set domain - To change computer's name
Echo set colors - To change the system's look
Echo.
Echo More features coming soon !
goto CommandLine

:SetPass
rem Locate 5 1
rem CursorShow
Echo Okay, let's define your password.  (
rem ChangeColor 12 %color1%
rem Locate 5 37
Echo WARNING
rem ChangeColor %textcolor1% %color1%
rem Locate 5 45
Echo : Do NOT use spaces !)
Echo.
Echo New password :
Echo Confirm pass :
rem Locate 7 16
rem GetMasked
set rootPass=%result%
rem Locate 8 16
rem GetMasked
call :ResultQuotesFix
IF /i "%result%"=="%rootPass%" (

goto SetPassSuccess
)

rem ChangeColor %txtcolor1% %color1%
Echo.
Echo.
Echo Passwords do not match!
rem wait 2000
goto CommandLine
:SetPassSuccess
Echo.
Echo.
Echo Password modified !
Echo Exit BatchOS through the 'exit' command or your changes won't be saved!
goto CommandLine

:SetUser
rem Locate 5 1
Echo Your current username is '%username%'.
Echo New username :
rem Locate 6 15
rem CursorShow
rem GetInput
call :ResultQuotesFix
set username=%result%

Echo.
Echo Username modified !
Echo Exit BatchOS through the 'exit' command or your changes won't be saved!
goto CommandLine

:SetDomain
rem Locate 5 1
Echo Current computer's name is '%computername%'.
Echo New name :
rem Locate 6 11
rem CursorShow
rem GetInput
call :ResultQuotesFix
set computername=%result%

Echo.
Echo Domain modified !
Echo Exit BatchOS through the 'exit' command or your changes won't be saved!
goto CommandLine

:SetColors
rem Locate 5 1
Echo Choose background color :
Echo.
Echo Black, Green, Red, Purple, White, Grey, Blue
Echo.
Echo Color :
rem Locate 9 9
rem GetInput
call :ResultQuotesFix
IF /i "%result%"=="black" (
set color1=0
set txtcolor1=15

goto SetColors2
)
IF /i "%result%"=="green" (
set color1=2
set txtcolor1=15

goto SetColors2
)
IF /i "%result%"=="red" (
set color1=4
set txtcolor1=15

goto SetColors2
)
IF /i "%result%"=="purple" (
set color1=5
set txtcolor1=15

goto SetColors2
)
IF /i "%result%"=="white" (
set color1=15
set txtcolor1=0

goto SetColors2
)
IF /i "%result%"=="grey" (
set color1=7
set txtcolor1=0

goto SetColors2
)
IF /i "%result%"=="blue" (
set color1=1
set txtcolor1=15

goto SetColors2
) ELSE (

Echo.
Echo.
Echo Bad color name !
goto CommandLine
)
:SetColors2
rem PaintScreen %color1%
rem PaintBoxAt 23 1 3 80 %color2%
rem ChangeColor %txtcolor2% %color2%
rem Locate 24 1
echo %location%
rem Locate 1 70
rem ChangeColor %txtcolor2% %color1%
Echo BatchOS %version%
rem ChangeColor %txtcolor1% %color1%
rem Locate 5 1
Echo Choose secondary color :
Echo.
Echo Green, Red, Purple, White, Grey, Blue
Echo.
Echo Color :
rem Locate 9 9
rem GetInput
call :ResultQuotesFix
IF /i "%result%"=="green" (
set color2=2
set txtcolor2=15

goto SetColorsEnd
)
IF /i "%result%"=="red" (
set color2=4
set txtcolor2=15

goto SetColorsEnd
)
IF /i "%result%"=="purple" (
set color2=5
set txtcolor2=15

goto SetColorsEnd
)
IF /i "%result%"=="white" (
set color2=15
set txtcolor2=0

goto SetColorsEnd
)
IF /i "%result%"=="grey" (
set color2=7
set txtcolor2=0

goto SetColorsEnd
)
IF /i "%result%"=="blue" (
set color2=1
set txtcolor2=15

goto SetColorsEnd
) ELSE (

Echo.
Echo.
Echo Bad color name !
goto CommandLine
)
:SetColorsEnd
Echo.
Echo Colors modified !
Echo Exit BatchOS through the 'exit' command or your changes won't be saved!
goto CommandLine

:Bpm
call :ResultQuotesFix
IF /i "%result%"=="bpm" (
Echo Usage :
Echo. 
Echo bpm upgrade [packet]
Echo bpm [install/remove] [packet]
goto CommandLine
)
IF /i "%result:~0,6%"=="bpm /?" ( 
Echo Usage :
Echo.
Echo bpm upgrade [packet]
Echo bpm [install/remove] [packet]
goto CommandLine
)

IF /i "%result:~0,11%"=="bpm upgrade" (
IF not exist "%BatchOSsystem%\bpm" mkdir %BatchOSsystem%\bpm
Echo Searching for BatchOS upgrades...
Echo.
Echo open batchos.run>"%BatchOSsystem%\bpm\tmp.ftp"
Echo u80275404-bosclient>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo rosebud>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo lcd %BatchOSsystem%\bpm>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo cd upgrade>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo hash>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo get latest.bat>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo disconnect>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo quit>>"%BatchOSsystem%\bpm\tmp.ftp"
start "Searching for BatchOS upgrades..." /HIGH /WAIT ftp -v -i -s:%BatchOSsystem%\bpm\tmp.ftp
Del /Q %BatchOSsystem%\bpm\tmp.ftp

IF not exist "%BatchOSsystem%\bpm\latest.bat" (
Echo Something went wrong, aborting.
Echo.
Echo For more details, search this error on http://batchos.run/ :
Echo BPM-NOLATESTBAT
goto CommandLine
)


IF exist "%BatchOSsystem%\bpm\latest.bat" (
call "%BatchOSsystem%\bpm\latest.bat"
Del /Q "%BatchOSsystem%\bpm\latest.bat"

IF "%latestBOSver%" LEQ "%longversion%" (
Echo You already have the latest version of BatchOS.
goto CommandLine

)
IF NOT "%latestBOSver%" LEQ "%longversion%" (
Echo Upgrade found ! Downloading latest version %latestBOSver%
Echo batchos.run>"%BatchOSsystem%\bpm\tmp.ftp"
Echo u80275404-bosclient>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo rosebud>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo lcd %BatchOSsystem%\bpm>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo cd upgrade/%latestBOSver%>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo hash>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo get upgrade.bat>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo disconnect>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo quit>>"%BatchOSsystem%\bpm\tmp.ftp"
start "Downloading BatchOS upgrade..." /HIGH /WAIT ftp -v -i -s:%BatchOSsystem%\bpm\tmp.ftp
Del /Q %BatchOSsystem%\bpm\tmp.ftp
Echo.

IF not exist "%BatchOSsystem%\bpm\upgrade.bat" (
Echo Something went wrong, aborting.
Echo.
Echo For more details, search this error on http://batchos.run/ :
Echo BPM-NOUPGRADEBAT
goto CommandLine
)

Echo Upgrade downloaded, switching from %longversion% to %latestBOSver%
Del "%BatchOSsystem%\settings.bat"
Echo set rootPass=%rootPass% >"%BatchOSsystem%\settings.bat"
Echo set username=%username% >>"%BatchOSsystem%\settings.bat"
Echo set computername=%computername% >>"%BatchOSsystem%\settings.bat"
Echo set color1=%color1% >>"%BatchOSsystem%\settings.bat"
Echo set txtcolor1=%txtcolor1% >>"%BatchOSsystem%\settings.bat"
Echo set color2=%color2% >>"%BatchOSsystem%\settings.bat"
Echo set txtcolor2=%txtcolor2% >>"%BatchOSsystem%\settings.bat"
cd /D C:\
subst /D B:
set BatchOSbin=
set BatchOSsystem=
set color1=
set color2=
set commandLineMargin=
set COMPUTERNAME=
set location=
set longversion=
set MYFILES=
set PasswordWrong=
set result=
set rootPass=
set txtcolor1=
set txtcolor2=
set USERNAME=
set version=
set writingWait=
set tmp=
set latestBOSver=
start %BatchOSsystem%\bpm\upgrade.bat
exit
)
)
)

IF /i "%result:~0,11%"=="bpm install" (
IF not exist "%BatchOSsystem%\bpm" mkdir %BatchOSsystem%\bpm
set packet=%result:~12%
Echo Searching for !packet!...
Echo.
Echo open batchos.run>"%BatchOSsystem%\bpm\tmp.ftp"
Echo u80275404-bosclient>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo rosebud>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo lcd %BatchOSsystem%\bpm>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo cd packets>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo cd install>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo cd !packet!>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo hash>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo get latest.bat>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo disconnect>>"%BatchOSsystem%\bpm\tmp.ftp"
Echo quit>>"%BatchOSsystem%\bpm\tmp.ftp"
start "Searching for !packet!..." /HIGH /WAIT ftp -v -i -s:%BatchOSsystem%\bpm\tmp.ftp
Del /Q %BatchOSsystem%\bpm\tmp.ftp

IF not exist "%BatchOSsystem%\bpm\latest.bat" (
Echo Something went wrong, aborting.
Echo.
Echo For more details, search this error on http://batchos.run/ :
Echo BPM-NOLATESTBAT
set packet=
goto CommandLine
)

start "Installing !packet!..." /HIGH /WAIT %BatchOSsystem%\bpm\latest.bat
Del /Q %BatchOSsystem%\bpm\latest.bat
Echo Installation script for !packet! done.
set packet=
goto CommandLine
)

IF /i "%result:~0,10%"=="bpm remove" (
IF not exist "%BatchOSsystem%\bpm" mkdir %BatchOSsystem%\bpm
set packet=%result:~11%
Echo Uninstall !packet! ? (Yes/No)
rem CursorShow
set /p result=
Echo.
IF /i not "%result%"=="yes" goto CommandLine
Echo Searching for %packet%...
Echo.

IF not exist "%BatchOSbin%\%packet%.bexe" (
Echo Couldn't find %packet%, aborting.
Echo.
Echo For more details, search this error on http://batchos.run/ :
Echo BPM-NOBEXE
set packet=
goto CommandLine
)

Echo Packet found ! Searching for uninstall script...
Echo.

IF exist "%BatchOSsystem%\uninstall\%packet%.bat" (
Echo Uninstall script found ! Starting uninstallation...
Echo.
start "Uninstalling script for %packet%" /HIGH /WAIT %BatchOSsystem%\uninstall\%packet%.bat
Echo Script done.
Echo.
) ELSE (
Echo No uninstallation script found.
)

Echo Deleting %packet%.bexe...
Del /Q %BatchOSbin%\%packet%.bexe
Echo.
Echo Uninstallation completed.
set packet=
goto CommandLine
)

goto CommandLine

:Uninstall
rem CursorShow
Echo Are you sure ? You will lose all your data and programs.
Echo.
Echo Password :
rem Locate 5 12
rem GetMasked
call :ResultQuotesFix
IF %result%==%rootPass% (

goto Uninstall1
)

Echo.
Echo Wrong password !
goto CommandLine
:Uninstall1
Cls
rem CursorHide
rem PaintScreen %color1%
rem PrintCenter Uninstalling and shutting down... 12 %txtcolor1% %color1%
set BatchOSbin=
set BatchOSsystem=
set color1=
set color2=
set commandLineMargin=
set COMPUTERNAME=
set location=
set longversion=
set MYFILES=
set PasswordWrong=
set rebootAsked=
set Reloading=
set result=
set rootPass=
set txtcolor1=
set txtcolor2=
set USERNAME=
set version=
set writingWait=
cd /D C:\
subst /D B:
Rmdir /S /Q "%APPDATA%\BatchOS\sys"
Rmdir /S /Q "%APPDATA%\BatchOS\home"
Rmdir /S /Q "%APPDATA%\BatchOS\bin"
assoc .bexe=
ftype BatchOSexe=
rem wait 3000
exit

:Goodbye
Cls
rem CursorHide
rem PaintScreen %color1%
rem PrintCenter Goodbye ! 12 %txtcolor1% %color1%
cd /D B:\
Del "%BatchOSsystem%\settings.bat"
Echo set rootPass=%rootPass% >"%BatchOSsystem%\settings.bat"
Echo set username=%username% >>"%BatchOSsystem%\settings.bat"
Echo set computername=%computername% >>"%BatchOSsystem%\settings.bat"
Echo set color1=%color1% >>"%BatchOSsystem%\settings.bat"
Echo set txtcolor1=%txtcolor1% >>"%BatchOSsystem%\settings.bat"
Echo set color2=%color2% >>"%BatchOSsystem%\settings.bat"
Echo set txtcolor2=%txtcolor2% >>"%BatchOSsystem%\settings.bat"
cd /D C:\
subst /D B:
set BatchOSbin=
set BatchOSsystem=
set color1=
set color2=
set commandLineMargin=
set COMPUTERNAME=
set location=
set longversion=
set MYFILES=
set PasswordWrong=
set result=
set rootPass=
set txtcolor1=
set txtcolor2=
set USERNAME=
set version=
set writingWait=
set tmp=
set packet=
rem wait 2000
IF "%rebootAsked%"=="true" (
set rebootAsked=
goto START
)
IF "%Reloading%"=="true" (
set Reloading=
cd /D C:\
call %0
)
exit

:Help
call :ResultQuotesFix
IF /i "%result%"=="help 3" (

Echo -------------------------------- HELP PAGE 3/3 ---------------------------------
Echo ---------------       BATCHOS PACKAGE MANAGER COMMANDS :        ----------------
Echo.
Echo.
Echo 'bpm upgrade' ....... Upgrade to the latest version of BatchOS
Echo 'bpm upgrade packet'  Upgrade to the latest version of 'packet' - 1.2 ONLY
Echo 'bpm install packet'  Install 'packet'
Echo 'bpm remove packet' . Uninstall 'packet'
Echo.
Echo.
Echo The package manager requires an Internet connection.
Echo Each package installed can be launched like any bin/%%.bexe program.
Echo For more information, visit BatchOS' official board at http://batchos.run/
Echo You'll find the latest info about BatchOS and the programs created by the
Echo community.
Echo.
Echo.
Echo --------------------------------------------------------------------------------
goto CommandLine
)
IF /i "%result%"=="help 2" (

Echo -------------------------------- HELP PAGE 2/3 ---------------------------------
Echo ---------------              FILESYSTEM COMMANDS :              ----------------
Echo.
Echo.
Echo.
Echo 'cd' ................ Change the current working directory
Echo 'ls' ................ List files and folders and the working directory
Echo 'rm'................. Delete files
Echo 'ren' ............... Rename files
Echo 'mkdir' ............. Create a directory
Echo 'rmdir' ............. Delete a directory
Echo 'mv' ................ Move directory trees or rename an existing directory
Echo 'cp' ................ Copy files and directories
Echo 'cat' ............... Read a file
Echo.
Echo.
Echo.
Echo --------------------------------------------------------------------------------
goto CommandLine
)
Echo -------------------------------- HELP PAGE 1/3 ---------------------------------
Echo -----------------              SYSTEM COMMANDS :              ------------------
Echo.
Echo.
Echo 'quit' .............. Exit BatchOS
Echo 'reboot' ............ Restart BatchOS
Echo 'logout' ............ Log out of the system
Echo 'reset' ............. Erase all settings and data, then reboot
Echo 'set' ............... Change system settings
Echo 'uninstall' ......... Uninstall BatchOS properly
Echo 'reload' ............ Reload BatchOS.exe (debug fonction)
Echo.
Echo To start a program that has been installed in your bin/ directory,
Echo use the name of the program as a command.
Echo Example : To launch bedit.exe, use 'bedit'.
Echo.
Echo.
Echo --------------------------------------------------------------------------------
goto CommandLine

:Bsod
rem CenterSelf
rem PaintScreen 9
rem ChangeColor 7 9
set writingWait=50
Echo *** STOP: 0x000000050 (0x8872A990, 0x00000001, 0x804F35D7, 0x00000000)
Echo.
rem wait %writingWait%
Echo A problem has been detected and BatchOS has been shut down to prevent damage
Echo to your computer. 
rem wait %writingWait%
Echo.
Echo KERNEL_MEMORY_CORRUPTION
Echo.
rem wait %writingWait%
Echo If this is the first time you've seen this Stop error screen,
rem wait %writingWait%
Echo  restart your computer. If this screen appears again, follow these steps:
Echo.
rem wait %writingWait%
Echo Check to make sure any new hardware or software is properly installed.
rem wait %writingWait%
Echo If this is a new installation, ask your hardware or software manufacturer
rem wait %writingWait%
Echo for any BatchOS updates you might need. 
rem wait %writingWait%
Echo.
rem wait %writingWait%
Echo.
Echo Technical information:
rem wait %writingWait%
Echo.
Echo *** STOP: 0x000000050 (0x8872A990, 0x00000001, 0x804F35D7, 0x00000000)
Echo *** ati3diag.dll - Address ED80AC55 base at ED88F000, Date Stamp 3dcb24d0
Echo.
rem wait %writingWait%
Echo Beginning dump of physical memory
rem wait 400
Echo Physical memory dump complete.
Echo Contact your system administrator or technical support group for further
Echo assistance.
rem wait 5000
goto START

:Setup
Cls
rem CenterSelf
rem PaintScreen 7
rem ChangeColor 0 7
rem CursorShow
rem Locate 2 1
Echo Welcome to BatchOS !
Echo.
Echo We need some info before we can let you start.
Echo First, what's your name ?
Echo.
Echo.
Echo Username :
rem Locate 8 12
rem GetInput
call :ResultQuotesFix
IF /i "%result%"=="" (

goto Setup
)
set username=%result%

goto Setup1

:Setup1
rem PaintScreen 7
rem ChangeColor 0 7
rem CursorShow
rem Locate 2 1
Echo Nice to meet you, %username% !
Echo.
Echo Now, let's define your password. (
rem ChangeColor 12 7
rem Locate 4 35
Echo WARNING
rem ChangeColor 0 7
rem Locate 4 43
Echo : Do NOT use spaces !)
Echo.
Echo New password :
Echo Confirm pass :
rem Locate 6 16
rem GetMasked
call :ResultQuotesFix
set rootPass=%result%

rem Locate 7 16
rem GetMasked
call :ResultQuotesFix
IF /i "%result%"=="%rootPass%" (

goto Setup2
)

rem ChangeColor 12 7
Echo.
Echo.
Echo Passwords do not match!
rem wait 2000
goto Setup1

:Setup2
Cls
rem PaintScreen 7
rem ChangeColor 0 7
rem CursorShow
rem Locate 2 1
Echo One last thing !
Echo.
Echo What will be the computer's name ?
Echo.
Echo.
Echo Computer name :
rem Locate 7 17
rem GetInput
call :ResultQuotesFix
IF /i "%result%"=="" goto Setup2
set computername=%result%

goto SetupEnd

:SetupEnd
Cls
rem PaintScreen 7
rem ChangeColor 0 7
rem Locate 2 1
Echo.
Echo That's all we need !
Echo.
Echo Installing file associations...

assoc .bexe=BatchOSexe
ftype BatchOSexe="%%1" %%%**

Echo Creating filesystem...

mkdir "%APPDATA%\BatchOS"
Del /S /Q "%APPDATA%\BatchOS\*"
subst B: "%APPDATA%\BatchOS"
cd /D B:\
mkdir \sys
mkdir \home
mkdir \bin
set BatchOSsystem=\sys
set BatchOSbin=\bin

Echo Writing settings file...

Echo set rootPass=%rootPass% >"%BatchOSsystem%\settings.bat"
Echo set username=%username% >>"%BatchOSsystem%\settings.bat"
Echo set computername=%computername% >>"%BatchOSsystem%\settings.bat"

Echo Installing basic programs...

:: Make some .bexes perma-resources and copy them to B:\bin\*.bexe
:: .bexe files are compiled batch programs renamed from exe to bexe, nothing more

set needSettings=false
cd /D C:\
subst /D B:
Echo Done !
Echo.
rem wait 1000
Echo Restarting BatchOS...
rem wait 2000
goto START

:Fixes

:ResultQuotesFix
set result=%result:"=%
goto :EOF
