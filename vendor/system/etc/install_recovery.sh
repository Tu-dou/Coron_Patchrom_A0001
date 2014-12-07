#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:16070656:5bb851a42efa58451e0f94ef0d8bcb80aa5b8a4c; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:13281280:f3686eedc3f2ac68a7d8266045f204996812493f EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 5bb851a42efa58451e0f94ef0d8bcb80aa5b8a4c 16070656 f3686eedc3f2ac68a7d8266045f204996812493f:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
