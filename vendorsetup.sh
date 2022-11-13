echo 'Starting to clone stuffs needed for your device'

echo 'Cloning Device tree'
# Device Tree
rm -rf device/realme/RMX1971 && git clone https://github.com/riceDroid-Devices/device_realme_RMX1971 -b 13 device/realme/RMX1971

echo 'Cloning Common tree'
# CommonTree
rm -rf device/realme/sdm710-common && git clone https://github.com/riceDroid-Devices/device_realme_sdm710-common -b 13 device/realme/sdm710-common

echo 'Cloning Kernel tree'
# Kernel Tree
rm -rf kernel/realme/sdm710 && git clone --depth=1 https://github.com/dotOS-Devices/kernel_realme_RMX1971 -b dot12 kernel/realme/sdm710

echo 'Cloning Vendor tree'
# Vendor Tree
rm -rf vendor/realme/RMX1971 && git clone https://gitlab.com/dotos-devices/vendor_realme_rmx1971.git -b dot12 vendor/realme/RMX1971

echo 'Cloning Vendor Common tree'
# Vendor Common Tree
rm -rf vendor/realme/sdm710-common && git clone https://github.com/ProjectElixir-Devices/vendor_realme_sdm710-common -b snow vendor/realme/sdm710-common

echo 'Cloning the HALs'
rm -rf hardware/qcom-caf/sdm845/display;rm -rf hardware/qcom-caf/sdm845/audio;rm -rf hardware/qcom-caf/sdm845/media;git clone https://github.com/Project-Elixir/hardware_qcom-caf_sdm845_display.git -b snow hardware/qcom-caf/sdm845/display;git clone https://github.com/Project-Elixir/hardware_qcom-caf_sdm845_audio.git -b snow hardware/qcom-caf/sdm845/audio;git clone https://github.com/Project-Elixir/hardware_qcom-caf_sdm845_media.git -b snow hardware/qcom-caf/sdm845/media

echo 'Cloning Proton Clang'
rm -rf prebuilts/clang/host/linux-x86/clang-proton;git clone --depth=1 https://github.com/kdrag0n/proton-clang  prebuilts/clang/host/linux-x86/clang-proton

echo 'Adding Patch to fix Brightness Slider Curve'
cd frameworks/base && wget https://raw.githubusercontent.com/sarthakroy2002/random-stuff/main/Patches/Fix-brightness-slider-curve-for-some-devices-a12l.patch && patch -p1 < *.patch && cd -

echo 'Completed cloning your trees, proceed with lunch Command'
