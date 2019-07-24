#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32494926:365e40d00c797811938154310909d163afea4b7a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:28290378:06e61aed376894dade8f5f91c03830b32a43a721 EMMC:/dev/block/bootdevice/by-name/recovery 365e40d00c797811938154310909d163afea4b7a 32494926 06e61aed376894dade8f5f91c03830b32a43a721:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
