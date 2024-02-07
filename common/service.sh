#!/system/bin/sh

sleep 30
swapoff /dev/block/zram0

for virtual_mem in /proc/sys/vm
    do 
        echo 10 > $virtual_mem/dirty_ratio
        echo 5 > $virtual_mem/dirty_background_ratio
        echo 1500 > $virtual_mem/dirty_writeback_centisecs
        echo 500 > $virtual_mem/dirty_expire_centisecs
        echo 90 > $virtual_mem/vfs_cache_pressure
done
exit 0