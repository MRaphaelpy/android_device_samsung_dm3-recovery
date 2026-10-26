# OrangeFox Device Tree for Samsung Galaxy S23 Ultra (dm3q)

## For Decryption
Download [DECRYPT_RW.img.tar](https://github.com/Archer3770/Release/releases/download/Release/USERDATA_AIO_SM-S918x_DECRYPT_RW.img.tar) 

[Install Instructions](https://xdaforums.com/t/sm-s918b-0-one-ui-6-1-userdata_aio-odin-flashable-to-remove-encryption-make-rom-rw-install-twrp-root-use-on-stock-firmware-unlocked-bootloaders.4610061/)

# Special Thanks 
[jrkruse](https://xdaforums.com/m/jrkruse.1949695/) For userdata aio script.

[Edward](https://github.com/edward0181) For help.

# Kernel source 
https://github.com/samsung-sm8550/kernel_samsung_sm8550/tree/twrp-12.1

## Sync OrangeFox 12.1
```bash
git clone https://gitlab.com/OrangeFox/sync.git ~/OrangeFox_sync/sync
cd ~/OrangeFox_sync/sync
./orangefox_sync.sh --branch 12.1 --path ~/fox_12.1
```

## Clone repo
```bash
cd ~/fox_12.1
git clone -b orangefox https://github.com/MRaphaelpy/android_device_samsung_dm3-recovery device/samsung/dm3q
git clone -b android-12.1 https://github.com/TeamWin/android_device_qcom_twrp-common device/qcom/twrp-common
```

## To build
```bash
cd ~/fox_12.1
. build/envsetup.sh
lunch twrp_dm3q-eng
mka adbd recoveryimage
```

Output: `out/target/product/dm3q/OrangeFox-*-Unofficial-dm3q.img` / `.zip` and `recovery.tar` for Odin.
