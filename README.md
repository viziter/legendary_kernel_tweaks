<h1 align="center">LKT - Magisk 🏁</h1>
<p align="center">
 <strong>legendary.kernel.tweaks</strong></div>
</p>

LKT is an advanced governor and <code>kernel</code> tweaks collection that aims to greatly enhance power efficiency and performance.

<p align="center">
</a> <img src="https://img.shields.io/badge/Version-1.9.2-lightgrey.svg"></a> <img src="https://img.shields.io/badge/Updated-Aug%2023%2C%202019-brightgreen.svg"></a> 
</p>

<p align="center">
<a href="https://forum.xda-developers.com/apps/magisk/xz-lxt-1-0-insane-battery-life-12h-sot-t3700688"><img src="https://img.shields.io/badge/-XDA-orange.svg"></a>  <a href="https://t.me/LKT_XDA"><img src="https://img.shields.io/badge/-Telegram-9cf.svg"></a>  <a href="https://join.slack.com/t/lkt-xda/shared_invite/enQtNzI2NTIzNzE1Mzk3LWE2YjY5YjA1OGUwZmFkZWEzZjUyMDEyMTQ0NTE0MDlmOTg4YTAyMWU1ZWVkMWMwMWZhNzQ4NTU4MTRkZGUyMjQ"><img src="https://img.shields.io/badge/-Slack-BlueViolet"></a>
</p>

<p align="center">
<a href="http://bit.ly/2QYQnln"><img src="https://img.shields.io/badge/-Donate-blue"></a>
</p>

## FAQ
Read about frequently asked questions [here](https://telegra.ph/LKT---FAQ-03-25).

## Features
- LKT aims to achieve a fair **balance** between **power consumption** and **performance**.
Instead of tuning the parameters manually, LKT adopts Project WIPE open-source <code>interactive</code> parameters for the mainstream SOCs that are generated by machine learning <code>AI</code> via simulation and heuristic optimization algorithms.

- [WIPE v2](https://github.com/yc9559/wipe-v2) focuses on meeting performance requirements when interacting with apps by reducing non-interactive lag, pushing the trade-off between fluency and power saving even further. <code>QTI Boost Framework </code>, which must be disabled before applying optimization, is able to dynamically override parameters based on perf hint. This project utilizes <code>QTI Boost Framework</code> and extends the ability of override custom parameters. When launching APPs or scrolling the screen, apply aggressive parameters to improve responsiveness at an acceptable power usage. When there is no interaction, use conservative parameters, use small core clusters as much as possible, and run at a higher energy efficiency under heavy load.

## Requirements
- [Magisk](https://github.com/topjohnwu/Magisk/releases) or init.d support if not using magisk
- [Busybox](https://sourceforge.net/projects/magiskfiles/files/module-uploads/busybox-ndk-13015.zip/download) (Needed for terminal commands).

## Compatibility
```
Snapdragon 855
Snapdragon 845
Snapdragon 835
Snapdragon 821
Snapdragon 820
Snapdragon 730
Snapdragon 710
Snapdragon 675
Snapdragon 660
Snapdragon 650
Snapdragon 652
Snapdragon 636
Snapdragon 626
Snapdragon 625
Exynos 9820 
Exynos 9810 
Exynos 8890 
Exynos 8895 
Exynos 7420 

*All other EAS SoCs using schedutil and schedutil based governors are compatible
```
## Changelog
### Downloads archive (mirror)
**[Google Drive](https://drive.google.com/open?id=1CFLs741l37IT2ga19f1Nu8MJiZQvMSjp)**

### v1.9.3 (25/08/2019)
- Bug fixes

## Disclaimer
LKT is an advanced tweaks collection that acts on `kernel` level !
Use it at your own risk, and always have backups. I won't be responsible for any damage or loss.

## Credits
### Author
**Omar Koulache** - [korom42](https://github.com/korom42)

Thanks goes to those wonderful people
- [WIPE V2](https://github.com/yc9559/wipe-v2/) @yc9559 @cjybyjk
- [Unity template](https://github.com/Zackptg5/Unity) @ahrion & @Zackptg5 
- [Magisk](https://github.com/topjohnwu/Magisk) @topjohnwu

See also the list of [contributors](https://github.com/korom42/LKT/contributors) who participated in this project.

<p align="center">
 <a href="http://hits.dwyl.io/Korom42/Magisk-Modules-Repo/legendary_kernel_tweaks"><img src="http://hits.dwyl.io/Korom42/Magisk-Modules-Repo/legendary_kernel_tweaks.svg"></a>
</p>

