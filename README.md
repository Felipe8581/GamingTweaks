# Fr33thy is a scammer, a lier<br/>
https://docs.google.com/document/d/1ZDFHUmM4ts3NpLM3jwv_pcPQbPtivDNBc9__J7FqEn4/edit#<br/>
Thats a link with evidences of how bad he is..<br/>
I never, ever said bad against him till now, i even defended him at start of everyone shitting on him.<br/>
Because i think if the support tech is trading time and effort for helping people it should be a respectable job.<br/>
But he lies, he steals, he talk shit, and he will fuck you for money..<br/>

For the "i dont care about drama, i just wanna help at my pc and im rich", listen, he will somehow fuck you. trust me.

# Felipe.#8581 at discord [![GamingTweaks](https://img.shields.io/badge/support-me-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=53DKRDTP43ZAG&source=url)
A collection of cool hidden and not so hidden tweaks <br/>
This is heavily inspired by Revision and Calypto's, Danske's and Melody's...<br/>

## This is my FREE tweaking utility tool

https://drive.google.com/file/d/1dgr77JDEHPi3AoMDV9CqxewDPOLqay2N/view?usp=sharing(https://drive.google.com/file/d/1dgr77JDEHPi3AoMDV9CqxewDPOLqay2N/view?usp=sharing)

It is a collection of everything, made for every gaming pc or windows version<br/>
Please join revision discord if you have any doubt about this.. You can talk with me on #collab-feedback or #felipe<br/>

![post](/img/post.png)

## Custom ISOs
This is such a important move, will make `50%` of work done. Choose your ISO wisely. Removing/stripping too much cause more issues and incompatibility and doesnt help with performance or speed, i blindly trust those ISO community creators because they have much experience

[*Learn more about them in Revision discord*](https://discordapp.com/invite/CCxWegZ)

[Get your Revision windows here](https://www.revi.cc/revios/download) <br/>

## Windows Timers

Windows timers are not a complex topic. Its just that we saw the options and we are complicating using bad values<br/>
The best scenario is to not use syntetic timers, which is default<br/>
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

**High Precision Event Timer** (HPET) (bcdedit /set useplatformclock true + HPET BIOS ON)<br/>
HPET is highly stable high frequency clock, but it is programmed to be synced tightly, since it is set to tick every x amount of time, regardless of hardware configuration
HPET would be good if all cores ticked at the exact same speed and were naturally synced, but that is something that rarely ever happens which is why it is bad
HPET is a hardware based, synthetic timer, windows made it for debugging purposes and most of the time almost everytime it shouldnt be used
High frequency clocks like HPET may potentially allow for smoother gameplay and better sync at the expense of latency<br/>

Different Windows versions (7/8/8.1/10) all have different ways of using the TSC <br/>
Some motherboards have no option to disable HPET, if you are advanced there is GRUB or custom bios<br/>

## MSI-Mode and Affinitys

MSI is Message Signaled-Based Interrupts, a faster and better method that replaces Windows Line-Based interrupt mode<br/>
Some drivers default to using legacy pin-triggered interrupts, which are now emulated and are slower than using MSI<br/>

Interrupt-Affinity Policy can set affinity for a driver’s interrupts

To change msi and affinitys settings, Bored made a wonderfull and complete tool.. check out his file
https://github.com/BoringBoredom/PCIutil/releases

[*Read more Windows Line Based vs MSI Based.*](https://forums.guru3d.com/threads/windows-line-based-vs-message-signaled-based-interrupts-msi-tool.378044/)

##  Process Scheduling

Win32PrioritySeparation value is the amount of time the Windows process scheduler allocates to a program

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

**To set Win32PrioritySeparation to 38 Decimal (26 Hex), paste this to Command Promt:**

`REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f`

[*Read more about Process Scheduling and Win32PrioritySeparation*](http://recoverymonkey.org/2007/08/17/processor-scheduling-and-quanta-in-windows-and-a-bit-about-unixlinux/)

##  Power Options

If you are not in Windows 7, just tweak your bios disabling c-states and power savings so you can disable power service:<br/>
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Power" /v "Start" /t REG_DWORD /d "4" /f

or use a custom powerplan:

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
Dont disable what doesnt have cpu cycles, install processexplorer or processhacker and you will see there is no point<br/>
If you are on decent windows like Revision isos, you really dont need that extra disabling...

##   BIOS

This is very important for your system, make sure to check every setting <br/>

**Must do:**

Disable C-State (CPU Enhanced Halt (C1E), C3, C6, C7, C8)<br/>
Disable Intel (R) Speed Shift Technology<br/> or CPU Enhanced Intel Speedstep Technology (EIST) Function<br/>
Disable Active State Power Management ASPM/ALPM settings<br/>
Disable OnBoard Video, Audio or Lan Controller if you have a PCI/USB one that is or will be installed.<br/>
Disable Platform Power Management<br/>
Disable any onboard LED traces/lights<br/>
Disable not used features<br/>
Enable XMP

**Remove all protections and power savings, enable max performance/power** <br/>

Internal PLL Overvoltage Disabled<br/>
Spread Sprectum Disabled<br/>
BCLK Recovery Disabled<br/>
Intel Rapid Start Disabled<br/>
Intel Smart Connect Disabled<br/>
EPU Power Saving mode Disabled<br/>
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
Power Current Slope Level-4<br/>
Power Current Offset -100%<br/>
CPU C-States Disabled<br/>
High Precision Timer Disabled<br/>
Intel Adaptive Thermal Monitor Disabled<br/>
Hyper-threading Disabled<br/>
Execute Disable Bit Disabled<br/>
Intel Virtualization Technology Disabled<br/>

##   Overclocks

All tools necessary: <br/>
[Download OCCT](https://www.ocbase.com/download.php) <br/>
[Download MEMTest64](https://drive.google.com/file/d/12ga7LsEogbp8yQIUhPKRHTmxNh8fFS5s/view?usp=sharing)

##   NVIDIA settings

https://www.techpowerup.com/download/techpowerup-nvcleanstall/<br/>

##   KMS activator

This is a activator that is just a text script and doesnt install anything in your machine... very safe.<br/>
https://github.com/kkkgo/KMS_VL_ALL<br/>

##   Useful links

**PC/Windows Stuff** </br>
[*RevisionOS discord*](https://discord.gg/CCxWegZ) </br>
[*LAG discord*](https://discord.gg/PfsdHaP) </br>
[*n1kobg discord*](https://discord.gg/8KSHTZ3) </br>
[*Melody Discord*](https://discord.gg/7n5EGQ) </br>

**Guides** </br>

[*Danske’s Windows Tweaking Guide*](https://docs.google.com/document/d/18uPEXJC5LSto8x9X_GteSI58sfQLCfamDG1HNHJWrQU/edit) </br>
[*Calypto Guide*](https://docs.google.com/document/d/1c2-lUJq74wuYK1WrA_bIvgb89dUN0sj8-hO3vqmrau4/edit?usp=sharing) </br>
[*Melody Ultra Tweaks Pack*](https://sites.google.com/view/melodystweaks/) </br>
[*n1kobg.blogspot.com*](http://n1kobg.blogspot.com/) </br>
[*Bunny Guide*](https://sites.google.com/view/winshit/overview)

**Monitor Stuff** </br>
[*TFT Central Monitor Reviews*](https://www.tftcentral.co.uk/) </br>
[*RTings Monitor Reviews*](https://www.rtings.com/monitor) </br>
[*Blurbusters Monitor Stuff*](https://blurbusters.com/)
