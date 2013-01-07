for cmd in $(busybox --list);
do ln -s /system/xbin/$cmd $cmd; 
done; 
ln -s /system/xbin/su su;
ln -s /system/bin/mksh sh;