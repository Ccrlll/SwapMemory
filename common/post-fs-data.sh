#!/system/bin/sh
zswap="/data/local/tmp/ccrlll"
param="/sys/module/zswap/parameters"

[[ -d "$zswap" ]] || mkdir -p $zswap

memInfo=$(grep MemTotal /proc/meminfo | awk '{print $2}')
ramPool=$(expr 2048000 \* 100 / $memInfo)

[[ -f "$zswap/zswap" ]] || (dd if=/dev/zero of=$zswap/zswap bs=1024 count=4194304 && mkswap $zswap/zswap)

echo zsmalloc > $param/zpool
echo lz4 > $param/compressor
echo $ramPool > $param/max_pool_percent
echo Y > $param/enabled

swapon $zswap/zswap
exit 0