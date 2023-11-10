# Genshin Launch splash screen for Linux using plymouth

## Preview / 预览

[Ubuntu？启动！](https://www.bilibili.com/video/BV1nN411g789)

The boot animation will be Genshin Launch and others will be simulated universe from Honkai Star Rail (Copy from Plymouth-SimulatedUniverse for out-of-box experience).

开机画面是原神启动，关机、重启等是模拟宇宙加载图标。

## Idea / 思路

First I use Kdenlive to clip the video and transform it into frame sequence. Then I use two scripts provided to do some post works. The animation script is based on animation scripts from *plymouth-themes*. The main difference is that `refresh_callback` has two stages in this project and the animation will not repeat. The shutdown, reboot animation comes from `Plymouth-SimulatedUniverse`.

首先用Kdenlive剪辑视频，转换成帧序列。然后使用两个脚本进行后期处理。动画脚本基于*plymouth-themes*项目内的动画脚本，主要区别是`refresh_callback`有两个阶段，动画不会重复播放。关机和重启动画来自于`Plymouth-SimulatedUniverse`。

## Usage / 使用方法

### Install / 安装

``` bash
sudo ./install.sh
```

### Configuration / 配置

`HAS_LUKS` in GenshinLaunch.script will decide if the animation stops and waits for password input. The default value is 0. There are other parameters in the top of GenshinLaunch.script such as animation speed and so no. You can adjust them as you wish.\

GenshinLaunch.script脚本里面的`HAS_LUKS`决定动画是否停下来等待输入密码，默认值是0.除此之外还有一些其它的参数比如动画速度等，可以在里面按照需要设置。

### Uninstall / 卸载

``` bash
sudo update-alternatives --remove default.plymouth /usr/share/plymouth/themes/GenshinLaunch/GenshinLaunch.plymouth
```

### Acknowledgement / 致谢

1. [Plymouth-SimulatedUniverse](https://github.com/ohaiibuzzle/Plymouth-SimulatedUniverse)
2. [plymouth-themes](https://github.com/adi1090x/plymouth-themes)

## Disclaimer / 免责声明

Please carefully check if the scripts fit your computer well before execution. Scripts in these projects were tested in the authors' computer. Due to different boot time, the animation might be too slower or faster for your computer and you might have to reconfigure the speed.

请仔细检查脚本能否在你的电脑上工作（目前只在本人的电脑上进行了测试）。特别是由于启动速度不同你可能需要重新调节播放速度。