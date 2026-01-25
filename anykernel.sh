### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=NovaKernel
kernel.revision=5.4
kernel.made=Omar @ Samsung Galaxy A73 | Official™
anykernel3.made=osm0sis @ xda-developers
kernel.compiler=Android clang 20.0.0
message.word=Thank you for installing NovaKernel
do.devicecheck=1
do.cleanup=1
device.name1=a73xq
device.name2=m52xq
device.name3=a52sxq
supported.versions=12-16
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=auto;
NO_BLOCK_DISPLAY=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
dump_boot;

write_boot;
## end boot install

# vendor_boot shell variables
BLOCK=vendor_boot

# reset for vendor_boot patching
reset_ak;

# vendor_boot install
split_boot;

flash_boot;
## end vendor_boot install
