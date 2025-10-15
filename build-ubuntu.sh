export BUILD_USERNAME=ibratabian17 
export BUILD_HOSTNAME=ibrata 

git clone https://github.com/ibratabian17/local_manifests.git --depth 1 -b halcyon-16 .repo/local_manifests
repo sync -j$(nproc --all) --force-sync
 
source build/envsetup.sh
# Build the ROM
lunch halcyon_beryllium-bp2a-userdebug
mka bacon
