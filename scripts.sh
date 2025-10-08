rm -rf .repo/local_manifests/ 
repo init -u https://github.com/PixelOS-AOSP/android_manifest.git -b sixteen --git-lfs 
 git clone https://github.com/ibratabian17/local_manifest.git --depth 1 -b pixelos-16 .repo/local_manifests &&  
# Sync the repositories
if [ -f /usr/bin/resync ]
 then
  /usr/bin/resync 
else
  /opt/crave/resync.sh
fi && 
# Set up build environment
export BUILD_USERNAME=ibratabian17 
 export BUILD_HOSTNAME=crave 
 source build/envsetup.sh
 
# Build the ROM
lunch aosp_beryllium-bp2a-userdebug && make installclean && mka bacon
