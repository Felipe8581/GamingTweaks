# Felipe#8581 at discord [![GamingTweaks](https://img.shields.io/badge/support-me-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=53DKRDTP43ZAG&source=url)
A collection of cool hidden and not so hidden tweaks <br/>
This is heavily inspired by *RevisionOS* discord and Calypto's Guide, and now from Melody's<br/>

*Shortlink: [`https://git.io/JvfJ6`](https://git.io/JvfJ6)*

*Read this in other languages: [English](README.md)![p](/img/US.png), [Portuguese](READMEpt.md)![p](/img/BR.png)*

**Note:** Some minimal stuff is Administrator protected/Windows protected, like disabling Scheduler service for example, best and easy method to make everything work in tweaking in Safe Mode.

## Table of Contents

 - [**Custom ISOs**](#custom-isos)
 - [**Windows Timers**](#windows-timers)
 - [**MSI-Mode**](#msi-mode)
 - [**Affinity Policy Tool**](#affinity-policy-tool)
 - [**Process Scheduling**](#process-scheduling)
 - [**Power Options**](#power-options)
 - [**Device Clean Up Tool**](#device-clean-up-tool)
 - [**Services**](#services)
 - [**BIOS**](#bios)
 - [Overclocks](#overclocks)
 - [Melody Ultra Tweaks Pack](#melody-ultra-tweaks-pack)
 - [NVIDIA settings](#nvidia-settings)
 - [KMS activator](#kms-activator)
 - [Useful links](#useful-links)

## Custom ISOs
This is such a important move, will make `50%` of work done. Choose your ISO wisely. Removing/stripping too much cause more issues and incompatibility and doesnt help with performance or speed, i blindly trust those ISO community creators because they have much experience.

[**Windows 7** by AmendOS 3.0.iso](https://mega.nz/#!AXZ1AIbA!o6NWq1OZkw8-b_ur9nguM-YlfkaDndTDge8BzTQLDaY) <br/>
[*Learn more about them in Evolve discord*](https://discordapp.com/invite/bkXwSNJ)<br/>

[**Windows 8.1** by UnifyOS 1.5.iso](https://sites.google.com/view/meetrevision/unifyos/download) <br/>
[*Learn more about them in Revision discord*](https://discordapp.com/invite/CCxWegZ)

[**Windows 10 2004** by Revision U1.0.iso](https://mega.nz/file/cLgRjZpQ#s_y9pHyaQm7-xMM8WjlkDNWKz1edUIUXGKPRHoiBBCo) <br/>
[*Learn more about them in Revision discord*](https://discordapp.com/invite/CCxWegZ)

**Note:** Installing them in MBR or GPT might give you different feels ingame. Experiment between those two options<br/>
DWM (Desktop Window Manager) is prooved to be bad in every scenario, you should remove it in any win version. <br/>
Windows 7 is by far the best for performance, but you can wisely pick, experiment and tweak newer versions as well.<br/>

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

TSC is reliable and will give you the lowest latency and highest fps, but not sure if best mouse feeling<br/>

**ACPI Power Management Timer** (PMT) (bcdedit /set useplatformclock true + HPET BIOS OFF) <br/>

PMT is a highly stable high frequency clock, it doesn't sync, because it is not set to a fixed heartbeat. It is frequency based, which means that it will never delay another tick from happening. This can eliminate the chance of having stutters.

**High Precision Event Timer** (HPET) (bcdedit /set useplatformclock true + HPET BIOS ON) <br/>

HPET is highly stable high frequency clock, but it is programmed to be synced tightly, since it is set to tick every x amount of time, regardless of hardware configuration. HPET would be good if all cores ticked at the exact same speed and were naturally synced, but that is something that rarely ever happens which is why it is bad for so many people. HPET is a hardware based, synthetic timer, windows made it for debugging purposes and most of the time almost everytime it shouldnt be used.
High frequency clocks like HPET may potentially allow for smoother gameplay and better sync at the expense of latency. <br/>

Different Windows versions (7/8/8.1/10) all have different ways of using the TSC <br/>
Some motherboards have no option to disable HPET, if you are advanced there is custom bios.

**Install SetTimerResolutionService**

This service increases the resolution of the Windows kernel timer, which will significantly lower latency.<br/>
Observation: Is not good to use TimerResolution when you disable HPET on BIOS.<br/>
Drop this file in C:/ folder, the file must be there to service work <br/>
Open command promt and paste: <br/>

`cd C:/` <br/>
`SetTimerResolutionService -install` <br/>

[Download SetTimerResolutionService](files/SetTimerResolutionService.exe)

**You can optionally use my settings, but i would love you to understand and try out what i just writed.**

`bcdedit /set allowedinmemorysettings 0` <br/>
`bcdedit /deletevalue useplatformclock` <br/>
`bcdedit /set useplatformtick Yes` <br/>
`bcdedit /set tscsyncpolicy Enhanced` <br/>
`bcdedit /set debug No` <br/>
`bcdedit /set isolatedcontext No` <br/>
`bcdedit /set pae ForceEnable` <br/>
`bcdedit /set bootmenupolicy Legacy` <br/>
`bcdedit /set usefirmwarepcisettings No` <br/>
`bcdedit /set sos Yes` <br/>
`bcdedit /set disabledynamictick Yes` <br/>
`bcdedit /set disableelamdrivers Yes` <br/>
`bcdedit /set quietboot Yes` <br/>
`bcdedit /set x2apicpolicy Enable` <br/>
`bcdedit /set vsmlaunchtype Off` <br/>
`bcdedit /set usephysicaldestination No` <br/>
`bcdedit /set ems No` <br/>
`bcdedit /set firstmegabytepolicy UseAll` <br/>
`bcdedit /set configaccesspolicy Default` <br/>
`bcdedit /set linearaddress57 optin` <br/>
`bcdedit /set noumex Yes` <br/>
`bcdedit /set bootems No` <br/>
`bcdedit /set graphicsmodedisabled No` <br/>
`bcdedit /set extendedinput Yes` <br/>
`bcdedit /set highestmode Yes` <br/>
`bcdedit /set forcefipscrypto No` <br/>
`bcdedit /set perfmem 0` <br/>
`bcdedit /set configflags 0` <br/>
`bcdedit /set uselegacyapicmode No` <br/>
`bcdedit /set onecpu No` <br/>
`bcdedit /set halbreakpoint No` <br/>
`bcdedit /set forcelegacyplatform No` <br/>

This is my current settings and with HPET BIOS OFF <br/>
If you see stutterings, you need to figure out better settings.

## MSI-Mode

MSI is Message Signaled-Based Interrupts, a faster and better method that replaces Windows Line-Based interrupt mode. <br/>
Some drivers default to using legacy pin-triggered interrupts, which are now emulated and are slower than using MSI.

**For this, now im giving the file that is part of Melodys Pack, named machinespecific.exe** <br/>

**It will tune your devices with msi on high plus making the whole system prioritys on them as homogeneous as possible** <br/>

**If you want to use only msi mode utility you can set all msi, all high/normal and limit 256** <br/>

[Download machine_specific.exe](https://drive.google.com/file/d/1UV3yRT2G9YhTwzWMDbppDGsidNrvi9BR/view?usp=sharing) <br/>
[Download MSI-mode utility v2](http://www.mediafire.com/file/2kkkvko7e75opce/MSI_util_v2.zip/file) <br/>
[*Read more Windows Line Based vs MSI Based.*](https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/)

## Affinity Policy Tool

My new approach to this tool is what Melody does in his pack too,<br/>
For more homogeneous system, the devices will be tuned with SpreadAllCores<br/>
If you use machine_specific.exe you dont need to tune Affinity anymore<br/>

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

**Try to understand the values, try to test the values, choose your desired value.**<br/>
I will no more recommend a single value, i can barely feel difference, tests in latency barely prove anything.<br/>
But seems like those values are the ones people like more: 42, 37, 26, 22, 16 <br/>

**To set Win32PrioritySeparation to 22 Decimal (16 Hex), paste this to Command Promt:**

`reg add "hklm\system\controlset001\control\prioritycontrol" /v win32priorityseparation /t reg_dword /d 00000022 /f`

[*Read more about Process Scheduling and Win32PrioritySeparation*](http://recoverymonkey.org/2007/08/17/processor-scheduling-and-quanta-in-windows-and-a-bit-about-unixlinux/)

##  Power Options

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

You should learn what services to disable, use regedit/serviwin, remove the necessary dependencys

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
Disable Legacy USB(after installing OS, cause you need this i guess for MBR install)

##   Overclocks

All tools necessary: <br/>
[Download OCCT 5.4.2](https://www.ocbase.com/download.php) <br/>
[Download MEMTest64](https://drive.google.com/file/d/12ga7LsEogbp8yQIUhPKRHTmxNh8fFS5s/view?usp=sharing)

##   NVIDIA settings

**Uninstall current driver with DisplayDriverUninstaller(DDU)** <br/>
**You should download and use my pre-debloated drivers**

Use NVSlimmer and download and install a clean nvidia driver, good options list: 391.35 / 441.41 / 442.74<br/>
The Inspector profile SHOULD be better with 441.41 and up.

![MSI](/img/scaling.png)

Use Nvidia Inspector with this profile, that i got the most from Riot(who might get the most by melody):<br/>
[Download Inspector rakz Profile.nip](https://drive.google.com/file/d/1kS_7yzqAc2cCY3kirxix-y9xcFIOi2xK/view?usp=sharing)

New GPU commands that i'm testing, gathered the most from Melody's<br/>
[Download newgputesting.bat](https://drive.google.com/file/d/12SucHGLV3yvnmkFppFz0haMQUTannJaO/view?usp=sharing)

##   KMS activator

[KMS_VL_ALL_AIO.cmd](files/KMS_VL_ALL_AIO.cmd)

##   Melody Ultra Tweaks Packs

**Listen before using his website/pack:**

Melody seens to be very very smart, but the nature of the tweaks COULD possibly be too advanced<br/>
So please try to do this>> Its opensource, open, **take a look, see what it does**, study, them use what you think is right.<br/>
It is also recommended to not use in stripped isos(edited ones, like the Revision isos for example but 2004 version is fine)<br/>
But, it worked well here. It might be good, take a look. but this is OPTIONAL.<br/>
Also, +1 for he being so helpful without asking for money and sharing content!

https://sites.google.com/view/melodystweaks/

##   Useful links

**PC/Windows Stuff** </br>
[*RevisionOS discord*](https://discord.gg/CCxWegZ) </br>
[*Calypto discord*](https://discord.gg/PfsdHaP) </br>
[*Fr33thy discord*](https://discord.gg/pTc37y7) </br>
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
