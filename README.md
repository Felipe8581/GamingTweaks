# Fr33thy is a scammer<br/>
https://docs.google.com/document/d/1ZDFHUmM4ts3NpLM3jwv_pcPQbPtivDNBc9__J7FqEn4/edit#<br/>
I even defended him when everyone was shitting on him.<br/>
Because I think if the support tech is trading time and effort for helping <br/>
people it should be a respectable job.<br/>
But he lies, he steals, he talk shit, and he will fuck you for money..<br/>

# Felipe.#8581 at discord [![GamingTweaks](https://img.shields.io/badge/support-me-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=53DKRDTP43ZAG&source=url)

Tweaking improves latency, input lag, system responsiveness, not FPS. You can<br/>
improve min and lows frametimes, depending on your hardware but do not expect<br/>
your computer to suddenly start hitting higher fps unless you did shit before <br/>
This is not realistic and that's why it's called optimization, not a miracle<br/>
"If you want more FPS, buy a new one PC with better hardware."<br/>

This text was written by n1ko?!

A common misunderstanding - LatencyMon and how the scores "don't matter"<br/>

Latencymon is a commonly used tool by people who are interested in measuring & <br/>
fixing their dpc latency, and also, by gamers who want to achieve low system latency.<br/>
Originally, latencymon was designed to just simply check if your system is suitable<br/>
for processing real-time audio. But it's nowadays even "abused" mainly by the small<br/>
portion of the gaming community who tweak their systems. Some of them think, if <br/>
your average DPC latency shows low values, your system has low latency! Yay! And,<br/>
it kind of is true. But not in a way that you'd imagine it to be.<br/>

If you have the same amount of memory latency as someone else, more than likely both<br/>
of your ram performs at a very similar level, depending on the hardware of course. Many<br/>
people think if they have the same amount of DPC latency as someone else, their system<br/>
will be exactly as low latency as theirs too. This is obviously not true, as something<br/>
as simple as replugging your mouse and keyboard can affect the latency of your system.<br/>
Now, obviously many people know that this isn't true, and they say "oh, don't look at<br/>
latencymon lol! it's complete placebo utter garbage tool that doesn't say anything". <br/>
And this is partly true. But by ignoring stuff like DPC latency & the amount of <br/>
ISRs (interrupts) each specific driver creates, many people will still continue to <br/>
have an unenjoyable gaming experience, and they can't figure out why. <br/>
Because a) they don't even fucking check the drivers tab in latencymon <br/>
b) there's something else going on that's not related to DPCs and ISRs (listed below).<br/>

- Bad SSD (eg. Kingston A400)<br/>
- Bad RAM w/o tightened timings<br/>
- Bad / no cooling (eg. no RAM / VRM cooling)<br/>
- Too low voltage<br/>
- Untweaked UEFI aka BIOS<br/>
- No proper knowledge about hardware dependant settings (eg. Shader Cache & Large System Cache)<br/>
- Bad PSU / power / bad or no grounding<br/>
- Bad cables (eg. monitor & ethernet cable)<br/>
- Bad network (eg. incorrectly configured network settings, bad modem/router, bad isp & bad routing)<br/>
- Interference caused by modem / router, phone, etc.<br/>
- CR2 instead of CR1<br/>
- And much more<br/>

In my opinion latencymon shouldn't be used at all, especially by the tweaking communities. Maybe by<br/>
the ones who have an IQ of over 30 and know how to use it. Not by the people who got pointed in the<br/>
wrong direction. You may ask why. Well, because latencymon's own driver (rspLLL.sys / rspLLL64.sys) <br/>
that's used to measure hard page faults, DPCs and ISRs, creates a shit ton amount of DPCs. Like <br/>
legitimately 1000 times more DPCs than for example ndis.sys (which is responsible for network) in my case.<br/>
And, what do people in tweaking communities do when using latencymon? They look at the average dpc latency. <br/>
Also, the tool is really inconsistent, which bring us to the glorious tool that is superior to <br/>
latencymon: xperf. It's by microsoft itself and is included with the Windows Performance Toolkit. <br/>
The usage of xperf is really simple, and is done using command prompt. A simple guide written <br/>
by mbk1969 shows how to use xperf to trace DPCs and ISRs <br/>
(https://forums.guru3d.com/threads/simple-way-to-trace-dpcs-and-isrs.423884/). <br/>
Also the report that xperf creates is a lot more detailed than the one which latencymon creates,<br/>
which makes xperf the superior tool to analyze DPCs and ISRs and the potential problems caused by them.<br/>

Conclusion: Take a look at your current system configuration and try to comprehend what might be causing <br/>
potential problems, if you have any. Latencymon nor xperf can't tell everything. Thank you.<br/>

This text was written by Danske

## What is Revision Custom ISO Windows
Choose your ISO wisely. This is such a important move, will make `50%` of work done. Removing/stripping too much cause more issues and incompatibility and doesnt help with performance or speed, i blindly trust that specific ISO community because they have much experience

[*Learn more about them in Revision discord*](https://discordapp.com/invite/CCxWegZ)<br/>
[Get your Revision windows here](https://www.revi.cc/revios/download) <br/>

## Things that you shouldnt forget

**Disable C-State (CPU Enhanced Halt (C1E), C3, C6, C7, C8)**<br/>
**Disable Intel (R) Speed Shift Technology<br/> or CPU Enhanced Intel Speedstep Technology (EIST) Function**<br/>
**Enable XMP**<br/>

Obviously disable every single power saving feature and try go for max performance/stability<br/>

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
