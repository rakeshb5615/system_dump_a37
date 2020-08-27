#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:27178284:095077788a4cf6e3f3bbaa8f08a2d11d6b7aa242; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:22011176:8ae2944aef12dc81b148d8460888c4600b875ef2 EMMC:/dev/block/bootdevice/by-name/recovery 095077788a4cf6e3f3bbaa8f08a2d11d6b7aa242 27178284 8ae2944aef12dc81b148d8460888c4600b875ef2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
