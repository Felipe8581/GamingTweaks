# Fr33thy is a scammer, stop giving money to a guy who claims support tech but is on his third personal main motherboard because he cant overclock properly<br/>
https://docs.google.com/document/d/1ZDFHUmM4ts3NpLM3jwv_pcPQbPtivDNBc9__J7FqEn4/edit#<br/>
Thats a link with evidences of how bad freethy person is..and he didnt started or made anything for tweaking scene, just a bad old guide that people made a lot of better ones later..Even danske with idk 13 year old ? made a way more complete guide..<br/>
I once was a member of his discord, like 90% of persons i know today, and EVERY single person say he is a retard.<br/>
I never, ever said bad against him till now, i even defended him at start of everyone shitting on him. Because i think if the support tech is trading time and effort for helping people it should be a respectable job. But he lies, he steals, he talk shit, and he will fuck you for money..<br/>
Im just writing this because recently he said im a douchbag and i copied his guide blablabla. Come on, i got better person to copy from.. like calypto,melody and revi guys.. Fr33thy is at very newbie level.. He cant even overclock without fry motherboards..<br/>
For the "i dont care about drama, i just wanna help at my pc and im rich", listen, he will somehow fuck you. trust me.




# Felipe#8581 at discord [![GamingTweaks](https://img.shields.io/badge/support-me-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=53DKRDTP43ZAG&source=url)
A collection of cool hidden and not so hidden tweaks <br/>
This is heavily inspired by *RevisionOS* discord and Calypto's Guide, and now from Melody's<br/>

*Shortlink: [`https://git.io/JvfJ6`](https://git.io/JvfJ6)*

*Read this in other languages: [English](README.md)![p](/img/US.png), [Portuguese](READMEpt.md)![p](/img/BR.png)*

**Note:** Some minimal stuff is Administrator protected/Windows protected, like disabling Scheduler service for example, best and easy method to make everything work in tweaking in Safe Mode.

## Custom ISOs
This is such a important move, will make `50%` of work done. Choose your ISO wisely. Removing/stripping too much cause more issues and incompatibility and doesnt help with performance or speed, i blindly trust those ISO community creators because they have much experience.

[*Learn more about them in Revision discord*](https://discordapp.com/invite/CCxWegZ)

Currently using and tweaking 1709 Windows 10 <br/>

[Get custom 1709S Revision iso here](https://www.revi.cc/revios/download) <br/>

**Note:** Windows 7 is very fine and a easier way to get optimal system. But its 2020 and some games and programs are loosing compatibility, example VALORANT

## Windows Timers

Windows timers are a complex topic. There are different types and results may vary.<br/>
But the best scenario is to not use syntetic timers. <br/>
To undo a command in bcdedit, do bcdedit /deletevalue X (where X is useplatformclock, x2apicpolicy, etc.)

bcdedit /set disabledynamictick yes (Windows 8+) <br/>
This command forces the kernel timer to constantly poll for interrupts instead of wait for them; dynamic tick was implemented as a power saving feature for laptops but hurts desktop performance

bcdedit /set useplatformtick yes (Windows 8+) <br/>
Forces the clock to be backed by a platform source, no synthetic timers are allowed <br/>
Potentially better performance, lowers timer resolution to .488 instead of .5ms

**Time Stamp Counter** (TSC) (default) (bcdedit /set useplatformclock false) <br/>
TSC is reliable and will give you the lowest latency and highest fps<br/>

**ACPI Power Management Timer** (PMT) (bcdedit /set useplatformclock true + HPET BIOS OFF) <br/>
PMT is a highly stable high frequency clock, it doesn't sync, because it is not set to a fixed heartbeat. It is frequency based, which means that it will never delay another tick from happening. This can eliminate the chance of having stutters.

**High Precision Event Timer** (HPET) (bcdedit /set useplatformclock true + HPET BIOS ON) <br/>
HPET is highly stable high frequency clock, but it is programmed to be synced tightly, since it is set to tick every x amount of time, regardless of hardware configuration. HPET would be good if all cores ticked at the exact same speed and were naturally synced, but that is something that rarely ever happens which is why it is bad for so many people. HPET is a hardware based, synthetic timer, windows made it for debugging purposes and most of the time almost everytime it shouldnt be used.
High frequency clocks like HPET may potentially allow for smoother gameplay and better sync at the expense of latency. <br/>

Different Windows versions (7/8/8.1/10) all have different ways of using the TSC <br/>
Some motherboards have no option to disable HPET, if you are advanced there is custom bios.

**You can optionally use my settings, but i would love you to understand and try out what i just writed.**

:: Unquestionable list <br/>
bcdedit /deletevalue useplatformclock <br/>
bcdedit /timeout 7 <br/>

:: Optionals list <br/>
bcdedit /set pae ForceEnable <br/>
bcdedit /set bootmenupolicy Legacy <br/>
bcdedit /set debug No <br/>
bcdedit /set allowedinmemorysettings 0 <br/>
bcdedit /set usefirmwarepcisettings No  <br/>
bcdedit /set ems No <br/>
bcdedit /set bootems No  <br/>
bcdedit /set extendedinput Yes <br/>
bcdedit /set forcefipscrypto No <br/>
bcdedit /set perfmem 0  <br/>
bcdedit /set configflags 0  <br/>
bcdedit /set halbreakpoint No  <br/>
bcdedit /set bootux Disabled <br/>
bcdedit /set vm No <br/>
bcdedit /set vsmlaunchtype Off <br/>
bcdedit /set hypervisorlaunchtype Off <br/>
bcdedit /set usefirmwarepcisettings no <br/>
bcdedit /set tpmbootentropy ForceDisable <br/>
bcdedit /set firstmegabytepolicy UseAll <br/>
bcdedit /set allowedinmemorysettings 0x0 <br/>
bcdedit /set isolatedcontext No <br/>
bcdedit /set x2apicpolicy Enable <br/>
bcdedit /set configaccesspolicy Default <br/>
bcdedit /set MSI Default <br/>
bcdedit /set usephysicaldestination No <br/>
bcdedit /set usefirmwarepcisettings No <br/>

:: Depends on the scenario to have best results, they are nonuniversal, Test <br/>
bcdedit /set useplatformtick Yes <br/>
bcdedit /set tscsyncpolicy Enhanced <br/>

This is my current settings and with HPET BIOS OFF <br/>
If you see stutterings, you need to figure out better settings.

## MSI-Mode

MSI is Message Signaled-Based Interrupts, a faster and better method that replaces Windows Line-Based interrupt mode. <br/>
Some drivers default to using legacy pin-triggered interrupts, which are now emulated and are slower than using MSI.<br/>
machine_specific.exe sets everything to msi, and uncap<br/>

[Download machine_specific.exe](https://drive.google.com/file/d/1UV3yRT2G9YhTwzWMDbppDGsidNrvi9BR/view?usp=sharing) <br/>
[Download MSI-mode utility v2](http://www.mediafire.com/file/2kkkvko7e75opce/MSI_util_v2.zip/file) <br/>
[*Read more Windows Line Based vs MSI Based.*](https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/)

## Affinity Policy Tool

For more homogeneous system, you can turn devices in SpreadAllCores<br/>
If you use machine_specific.exe you dont need to tune Affinity cause it already does for you<br/>

[Download machine_specific.exe](https://drive.google.com/file/d/1UV3yRT2G9YhTwzWMDbppDGsidNrvi9BR/view?usp=sharing) <br/>
[Download Affinity Policy Tool](https://download.microsoft.com/download/9/2/0/9200a84d-6c21-4226-9922-57ef1dae939e/interrupt_affinity_policy_tool.msi)

##  Process Scheduling

What is Win32Priority:

is the amount of time the Windows process scheduler allocates to a program. Short quantum will improve responsiveness at the expense of more context switching, or switching between tasks, which is computationally expensive. Long quantum will improve performance of programs at the expense of lower responsiveness. Why would you want long quantum, then? Well, it minimizes context switching and will make the game run smoother, resulting in better consistency when aiming. However, short quantum could potentially decrease input lag which would improve consistency as well. The higher the boost, the better the FPS and smoothness will be, but you may experience degraded input response with high boost. Generally, long quantum results in better smoothness but slightly degraded mouse response, whereas the opposite is true for short quantum.

New info by Nimble:
Calypto's guide and this text created based on him is written based on mouse interrupts being a background process
Thus no foreground boost, but from what I gather its the other way around. That mouse or keyboard determines what is the foreground, and then boost value determines how much more priority that thread gets
Which if its a game that uses raw input, the game gets boosted shunning background processes, while polling through raw input with higher priority, thus taking further mouse input over other background processes
So the one for smoothness(as he writes), would also be the best for input, on the condition that program is in exclusive fullscreen and using rawinput (not direct input)

**42 Decimal** = Short, Fixed, High foreground boost. 2A Hex<br/>
**41 Decimal** = Short, Fixed, Medium foreground boost. 29 Hex<br/>
**40 Decimal** = Short, Fixed, No foreground boost. 28 Hex<br/>
**38 Decimal** = Short, Variable, High foreground boost. 26 Hex<br/>
**37 Decimal** = Short, Variable, Medium foreground boost. 25 Hex<br/>
**36 Decimal** = Short, Variable, No foreground boost. 24 Hex<br/>
**26 Decimal** = Long, Fixed, High foreground boost. 1A Hex<br/>
**25 Decimal** = Long, Fixed, Medium foreground boost. 19 Hex<br/>
**24 Decimal** = Long, Fixed, No foreground boost. 18 Hex<br/>
**22 Decimal** = Long, Variable, High foreground boost. 16 Hex<br/>
**21 Decimal** = Long, Variable, Medium foreground boost. 15 Hex<br/>
**20 Decimal** = Long, Variable, No foreground boost. 14 Hex<br/>

![w](/img/w32.png)

I will no more recommend a single value, i can barely feel difference, tests in latency barely prove anything.<br/>
But seems like those values are the ones people like more: 40, 38, 37, 22 decimals<br/>

**To set Win32PrioritySeparation to 38 Decimal (26 Hex), paste this to Command Promt:**

`reg add "hklm\system\controlset001\control\prioritycontrol" /v win32priorityseparation /t reg_dword /d 00000038 /f`

[*Read more about Process Scheduling and Win32PrioritySeparation*](http://recoverymonkey.org/2007/08/17/processor-scheduling-and-quanta-in-windows-and-a-bit-about-unixlinux/)

##  Power Options

If you are in windows 10 just tweak your BIOS disabling c-states and power savings so you can disable Power service in windows with:<br/>
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Power" /v "Start" /t REG_DWORD /d 4 /f

What it does: Disable wake timers, USB Suspend setting, Controls CPU Idle, Disable Power Savings, Unpark cores and more. <br/>

Drop the file in C:/, Open command promt and type: <br/>
powercfg -import C:/RevisionPowerPlanV2.8.pow <br/>
Open Power Options and select RevisionPowerPlanV2.8 <br/>

[Download RevisionPowerPlanV2.8.pow](https://drive.google.com/file/d/1OvMwK7XD_e93hkGoyuQV-WuHsylvZgUf/view?usp=sharing)

Enable idle: (less responsive, lowers temperature)<br/>
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 0<br/>
powercfg -setactive scheme_current<br/>
Disable idle: (more responsive, raises temperature)<br/>
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 1<br/>
powercfg -setactive scheme_current


###  Device Clean Up Tool

This is a usefull utility to remove detached/ghost devices, very safe to do.

![wake](/img/devicecleanup.png)

[Download Device Clean Up Tool](https://www.uwe-sieber.de/files/devicecleanup.zip)

##   Services

You should learn what services to disable, use regedit/serviwin, remove the necessary dependencys<br/>
If you are on decent windows like Revision isos, you really dont need that extra 1%, having fewer threads/processes is not big gains.

##   BIOS

This is very important for your system, make sure to check every setting <br/>

**Must do:**

Disable C-State (CPU Enhanced Halt (C1E), C3, C6, C7, C8)<br/>
Disable Intel (R) Speed Shift Technology<br/>
Disable CPU Enhanced Intel Speedstep Technology (EIST) Function<br/>
Disable any Active State Power Management (ASPM)/Aggressive Link Power Management (ALPM) settings<br/>
Disable OnBoard Video, Audio or Lan Controller if you have a PCI/USB one that is or will be installed.<br/>
Disable Platform Power Management<br/>
Disable Legacy USB Support, Port 60/64 Emulation<br/>
Disable any onboard LED traces/lightsEnable Turbo Boost<br/>
Disable not used features<br/>
Enable XMP<br/>
Set any Fast Boot Settings to OFF<br/>
Set your PCI Express Max Link Speed to Gen3<br/>

**Remove all protections and power savings, enable max performance/power** <br/>

Internal PLL Overvoltage Disabled<br/>
Spread Sprectum Disabled<br/>
BCLK Recovery Disabled<br/>
Intel Rapid Start Disabled<br/>
Intel Smart Connect Disabled<br/>
EPU Power Saving mode Disabled<br/>
CPU Load-line Calibration(LLC) 7<br/>
CPU Power Phase Control Extreme<br/>
CPU Power Duty Control Extreme<br/>
CPU Current Capability 140%<br/>
CPU Frequency Tuning Mode +6%<br/>
CPU Frequency Switch Max<br/>
DRAM Frequency Switch Max<br/>
DRAM Current Capability 130%<br/>
DRAM Power Phase Control Extreme<br/>
Termination Anti-Aliasing Enabled<br/>
Enhanced Intel SpeedStep Technology Disabled<br/>
Long Duration Package Power Limit 9999<br/>
Short Duration Package Power Limit 9999<br/>
CPU Integrated VR Current Limit 9999<br/>
Package Power Time Window 9999<br/>
Idle Power-in Response Fast<br/>
Idle Power-out Responde Regular<br/>
Power Current Slope Level-4<br/>
Power Current Offset -100%<br/>
Power Fast Ramp Response 1.5<br/>
CPU C-States Disabled<br/>
CFG Lock Enabled<br/>
High Precision Timer Disabled<br/>
Intel Adaptive Thermal Monitor Disabled<br/>
Hyper-threading Disabled<br/>
Execute Disable Bit Disabled<br/>
Intel Virtualization Technology Disabled<br/>
Disable USB xHCI<br/>
Disable USB EHCI Hand-Off<br/>
Disable Legacy USB (after installing OS, cause you need this i guess for MBR install)

##   Overclocks

All tools necessary: <br/>
[Download OCCT 5.4.2](https://www.ocbase.com/download.php) <br/>
[Download MEMTest64](https://drive.google.com/file/d/12ga7LsEogbp8yQIUhPKRHTmxNh8fFS5s/view?usp=sharing)

##   NVIDIA settings

**Uninstall current driver with DisplayDriverUninstaller(DDU)** <br/>
**Use nvcleaninstall and download and install a clean nvidia driver** <br/>
I recommend using 441.41 driver.<br/>

https://www.techpowerup.com/download/techpowerup-nvcleanstall/<br/>

Now go to nvidia inspector github page and download it<br/>
https://github.com/Orbmu2k/nvidiaProfileInspector/releases/tag/2.3.0.12<br/>

Now you can configure settings yourself but i have done it for me like this:<br/>
https://cdn.discordapp.com/attachments/735530835733643286/742466173475487775/felipeprofile.nip

##   KMS activator

KMS VL ALL is kinda legal?! But i cant share it here go to his github official page, it activates windows without doing anything just scripts<br/>
https://github.com/kkkgo/KMS_VL_ALL<br/>

##   Melody Ultra Tweaks Packs

https://sites.google.com/view/melodystweaks/

I recently have edited the melody pack because i have different opinions and choices, and added some more info.<br/>
If you want take a look in #felipe at Revision discord.<br/>
Reason is melody makes everything, at all costs for input. Sometimes sacrificing too much of performance for it, so it is not worthy, i balanced this.<br/>

##   Useful links

**PC/Windows Stuff** </br>
[*RevisionOS discord*](https://discord.gg/CCxWegZ) </br>
[*Calypto discord*](https://discord.gg/PfsdHaP) </br>
[*n1kobg discord*](https://discord.gg/8KSHTZ3) </br>
[*Melody Pack Discord*](https://discord.gg/7n5EGQ) </br>
[*The-Eye.eu*](https://the-eye.eu/public/MSDN/) </br>
[*PrivacyTools.io*](https://www.privacytools.io) </br>
[*CHEF-KOCH github*](https://github.com/CHEF-KOCH) </br>
[*KMS_VL_ALL github*](https://github.com/kkkgo/KMS_VL_ALL)

**Guides** </br>

[*Revision BIOS Tweaking Guide*](https://docs.google.com/document/d/1-izZaWrXaKIncYXDwmdY32YwdGCU5mDLJE6TW1Opnv8/edit) </br>
[*Hydro Device Manager Guide*](https://docs.google.com/document/d/1y9PG71osCksYZSZ2I-z4WpqMOVUu5Q4fFH0TOC29MCs/edit) </br>
[*Hydro Affinity Guide*](https://docs.google.com/document/d/1Xf7gqGE7m7aXjT1ncdoQBY1EFYroelqoKIY3UY8jVfE/edit) </br>
[*Hydro NVIDIA Panel Guide*](https://docs.google.com/document/d/1ME6wVOyB3ZIDlQFzMLNu3IrKYw8heX2rz5lA7hHmRkw/edit) </br>
[*Hydro Stripping NVIDIA Driver Guide*](https://docs.google.com/document/d/1Wm2EbUdG_qFODvS6kArCajBSzDZEvcVqSRu9bzr4KDw/edit) </br>
[*Calypto Tweak Guide*](https://docs.google.com/document/d/1c2-lUJq74wuYK1WrA_bIvgb89dUN0sj8-hO3vqmrau4/edit?usp=sharing) </br>
[*Melody Ultra Tweaks Pack*](https://sites.google.com/view/melodystweaks/) </br>
[*Fr33thy Youtube*](https://www.youtube.com/user/chrisfreeth/videos) </br>
[*n1kobg.blogspot.com*](http://n1kobg.blogspot.com/) </br>
[*Bunny Guides*](https://sites.google.com/view/winshit/overview)

**Peripherals/Aiming/Gaming Stuff** </br>
[*Sparky Aim discord*](https://discord.gg/sparky) </br>
[*Setup tips page*](https://docs.google.com/document/d/1MkLeg229GXdOju2iEsKlKjYIvOUnTmHhwJ6MqR44ye0/edit) </br>
[*Sensitivity calculator*](https://aiming.pro/mouse-sensitivity-calculator) </br>
[*Overclock.net/mices*](http://www.overclock.net/f/375/mice) </br>
[*Reddit/MouseReview*](https://www.reddit.com/r/MouseReview/) </br>
[*Reddit/MousepadReview*](https://www.reddit.com/r/MousepadReview/) </br>
[*TFT Central Monitor Reviews*](https://www.tftcentral.co.uk/) </br>
[*RTings Monitor Reviews*](https://www.rtings.com/monitor) </br>
[*Blurbusters Monitor Stuff*](https://blurbusters.com/)

**Files/Tools** </br>
[*MouseTester*](https://www.overclock.net/forum/attachment.php?attachmentid=38838&d=1455148519) </br>
[*LatencyMonitor*](https://www.resplendence.com/latencymon) </br>
[*DeviceRemover*](https://www.majorgeeks.com/files/details/device_remover_543c.html) </br>
[*NVIDIA Inspector*](https://github.com/Orbmu2k/nvidiaProfileInspector/releases) </br>
[*IO Bit Unlocker*](https://www.iobit.com/pt/iobit-unlocker.php) </br>
[*Power Run*](https://www.sordum.org/downloads/?power-run) </br>
[*DNSBenchmark*](https://www.grc.com/dns/benchmark.htm) <br/>
[*Autoruns*](https://docs.microsoft.com/en-us/sysinternals/downloads/autoruns) <br/>

**Game Configs** </br>
[*Quake Live Config*](files/fe.7z) </br>
[*DIABOTICAL Config*](https://pastebin.com/hVGer9WF) </br>
[*CSGO Config*](files/autoexec.cfg)
