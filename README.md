# XP58

CUPS filter for thermal printer Xprinter XP58IIH. 

First of I would like to give a big shoutout to [@klirichek](https://github.com/klirichek) for making the [filters for Zjiang](https://github.com/klirichek/zj-58). Since the hardware in both the machines are basically the same he did 99% of the work for me.

I've only tested this on my Mac (Yosemite 10.10.2), but I can't imagine it won't work on Linux as well.

## Installation

To get this up and working, just clone the repository into a folder and run ```make```.

You need to make sure that you have cups installed. If you are compiling on linux, you probably need to run ```sudo apt-get install libcups2-dev libcupsimage2-dev``` to get the required header files. These are included on MacOSX.

After that you should have the binary file for the filter, and you can either manually place them;

The xp-58.ppd should live in ```/usr/share/cups/model/xprinter```.  
And the filter (rastertoxp58) should on macosx live in ```/usr/libexec/cups/filter``` or on (some) linux based systems: ```/usr/lib/cups/filter```.

Or you can run the corresponding installation file for your system. 

```sudo sh ./install-mac```  
```sudo sh ./install-linux``` (not tested, but should work)

### Cups
Go to [http://localhost:631/](http://localhost:631/) and follow the instructions for activating the WebGUI. 

After that you can follow the Linux Driver instructions that are shipped with the device. [Or download them from here](http://www.xprinter.net/products_show.asp?lan=zh-en&skin=1&newsid=239753224).

## Notes
I'm not great at C. I've just modified the script provided by [@klirichek](https://github.com/klirichek) and made it work on MacOSX. It probably won't work on Linux
