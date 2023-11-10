# Genshin Launch splash screen for Linux using plymouth

## Preview / 预览

[Ubuntu？启动！](https://www.bilibili.com/video/BV1nN411g789)

The boot animation will be Genshin Launch and others will be simulated universe from Honkai Star Rail (Copy from Plymouth-SimulatedUniverse for out-of-box experience).

开机画面是原神启动，关机、重启等是模拟宇宙加载图标。

## Usage / 使用方法

### Install / 安装

``` bash
sudo ./install.sh
```

### Uninstall / 卸载

``` bash
sudo update-alternatives --remove default.plymouth /usr/share/plymouth/themes/GenshinLaunch/GenshinLaunch.plymouth
```

### Acknowledgement / 致谢

1. [Plymouth-SimulatedUniverse](https://github.com/ohaiibuzzle/Plymouth-SimulatedUniverse)
2. [StarRailGrubThemes](https://github.com/voidlhf/StarRailGrubThemes)
3. [plymouth-themes](https://github.com/adi1090x/plymouth-themes)

## Disclaimer / 免责声明

Please carefully check if the scripts fit your computer well before execution. Scripts in these projects were tested in the authors' computer.

请仔细检查脚本能否在你的电脑上工作（目前只在本人的电脑上进行了测试）。