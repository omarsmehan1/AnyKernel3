### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=RIO-302-UNOFFICIAL
kernel.revision=5.4
kernel.made=Omar @ Samsung Galaxy A73 | Official™
anykernel3.made=osm0sis @ xda-developers
kernel.compiler=Android clang 19.0.0
message.word=Thank you for installing RIO-302
do.devicecheck=1
do.cleanup=1
do.modules=0
device.name1=a73xq
device.name2=a52sxq
device.name3=m52xq
supported.versions=11, 12, 13, 14, 15, 16
'; } # end properties

### AnyKernel install
# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=auto;
NO_BLOCK_DISPLAY=1;

# استيراد الوظائف الأساسية - لا تحذف هذا السطر
. tools/ak3-core.sh;

# تثبيت الكيرنل (Image) في قسم الـ Boot
dump_boot; 
write_boot; 

# تفليش الـ DTBO (إذا وجد الملف في الزيب سيقوم بتفليشه تلقائياً)
flash_dtbo;

# ---------------------------------------------------------
# إعدادات قسم vendor_boot (لتفليش الـ DTB)
BLOCK=vendor_boot;

# إعادة ضبط للبدء في تفليش القسم الثاني
reset_ak;

# تفليش الـ DTB في قسم vendor_boot
split_boot;
flash_boot; # سيقوم بتفليش الملفات الموجهة لهذا القسم
flash_dtb;  # تفليش ملف dtb الذي نسخه السكربت

## end install
