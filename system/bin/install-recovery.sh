#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32492878:3cdcd7737752475df8883cfb8ddf6ede2dd167a6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:28288330:acea6eb4c3b2e75947dd9c28488282b7af5ff7a8 EMMC:/dev/block/bootdevice/by-name/recovery 3cdcd7737752475df8883cfb8ddf6ede2dd167a6 32492878 acea6eb4c3b2e75947dd9c28488282b7af5ff7a8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
