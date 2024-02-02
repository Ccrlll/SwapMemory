## SwapMemory

MAGISK || KSU

Install: Flash on Magisk/KSU
Uninstall: Turn off/Uninstall the module - Reboot - Delete @ /data/local/tmp/ccrlll

Zswap initially tries to compress data that won't fit in the RAM. If the data is compressible, it is stored in RAM; otherwise, it is saved in the current swap. This method enables Zswap to make greater use of available RAM and swap space, particularly on systems with less than 4GB of RAM. Zswap is also more efficient in terms of CPU utilization. Unlike Zram, which attempts to compress everything, even incompressible data, Zswap selectively compresses data that can be compressed, therefore conserving CPU resources.

Note: On first boot it should boot slowly because it is making zswap and uninstall method is on description. This will disable the zRam!
Credits: lyb

You can check if it is working using an app
Appstore: DiskInfo App
