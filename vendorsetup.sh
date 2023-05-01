echo 'Starting to clone stuffs needed for your device'

echo 'Cloning Device tree'
# Device Tree
rm -rf device/realme/RMX1971 && git clone https://github.com/risingOSS-Devices/device_realme_RMX1971 -b rising device/realme/RMX1971

echo 'Cloning Common tree'
# CommonTree
rm -rf device/realme/sdm710-common && git clone https://github.com/risingOSS-Devices/device_realme_sdm710-common -b 13-op device/realme/sdm710-common

echo 'Cloning Kernel tree'
# Kernel Tree
rm -rf kernel/realme/sdm710 && git clone --depth=1 https://gitlab.com/kssrao13882/kernel_realme_sdm710.git -b 13 kernel/realme/sdm710

echo 'Cloning Vendor tree'
# Vendor Tree
rm -rf vendor/realme/RMX1971 && git clone https://gitlab.com/dotos-devices/vendor_realme_rmx1971.git -b dot12 vendor/realme/RMX1971

echo 'Cloning Vendor Common tree'
# Vendor Common Tree
rm -rf vendor/realme/sdm710-common && git clone https://github.com/kssrao13882/vendor_realme_sdm710-common-RD -b 13-op vendor/realme/sdm710-common

echo 'Cloning Proton Clang'
rm -rf prebuilts/clang/host/linux-x86/clang-proton;git clone --depth=1 https://github.com/kdrag0n/proton-clang  prebuilts/clang/host/linux-x86/clang-proton

echo 'Completed cloning your trees, proceed with lunch Command'
