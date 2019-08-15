##########################################################################################
#
# Unity Config Script
# by topjohnwu, modified by Zackptg5
#
##########################################################################################

##########################################################################################
# Unity Logic - Don't change/move this section
##########################################################################################

if [ -z $UF ]; then
  UF=$TMPDIR/common/unityfiles
  unzip -oq "$ZIPFILE" 'common/unityfiles/util_functions.sh' -d $TMPDIR >&2
  [ -f "$UF/util_functions.sh" ] || { ui_print "! Unable to extract zip file !"; exit 1; }
  . $UF/util_functions.sh
fi

comp_check

##########################################################################################
# Config Flags
##########################################################################################

# Uncomment and change 'MINAPI' and 'MAXAPI' to the minimum and maximum android version for your mod
# Uncomment DYNLIB if you want libs installed to vendor for oreo+ and system for anything older
# Uncomment SYSOVER if you want the mod to always be installed to system (even on magisk) - note that this can still be set to true by the user by adding 'sysover' to the zipname
# Uncomment DIRSEPOL if you want sepolicy patches applied to the boot img directly (not recommended) - THIS REQUIRES THE RAMDISK PATCHER ADDON (this addon requires minimum api of 17)
# Uncomment DEBUG if you want full debug logs (saved to /sdcard in magisk manager and the zip directory in twrp) - note that this can still be set to true by the user by adding 'debug' to the zipname
#MINAPI=21
#MAXAPI=25
#DYNLIB=true
#SYSOVER=true
#DIRSEPOL=true
#DEBUG=true

# Uncomment if you do *NOT* want Magisk to mount any files for you. Most modules would NOT want to set this flag to true
# This is obviously irrelevant for system installs. This will be set to true automatically if your module has no files in system
#SKIPMOUNT=true

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info why you would need this

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
"

##########################################################################################
# Custom Logic
##########################################################################################

# Set what you want to display when installing your module

print_modname() {
  center_and_print # Replace this line if using custom print stuff
  unity_main # Don't change this line
}

set_permissions() {
  : # Remove this if adding to this function

  # Note that all files/folders have the $UNITY prefix - keep this prefix on all of your files/folders
  # Also note the lack of '/' between variables - preceding slashes are already included in the variables
  # Use $VEN for vendor (Do not use /system$VEN, the $VEN is set to proper vendor path already - could be /vendor, /system/vendor, etc.)

  # Some examples:
  
  # For directories (includes files in them):
  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  
  # set_perm_recursive $UNITY/system/lib 0 0 0755 0644
  # set_perm_recursive $UNITY$VEN/lib/soundfx 0 0 0755 0644

  # For files (not in directories taken care of above)
  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  
  # set_perm $UNITY/system/lib/libart.so 0 0 0644
   bin=xbin
  if [ ! -d $SYS/xbin ]; then
    bin=bin
    mkdir $MODPATH/system/$bin
    mv $MODPATH/system/xbin/lkt $MODPATH/system/$bin
    rm -rf $MODPATH/system/xbin/*
    rmdir $MODPATH/system/xbin
  else
    rm -rf $MODPATH/system/bin/*
    rmdir $MODPATH/system/bin
  fi
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/$bin 0 0 0755 0777
  set_perm $MODPATH/service.sh 0 0 0777
}

# Custom Variables for Install AND Uninstall - Keep everything within this function - runs before uninstall/install
unity_custom() {
  #: # Remove this if adding to this function

  target=`getprop ro.board.platform`
  ui_print "- The SoC of this device is ** ${target} **"

  case "${target}" in
  "msmnile")
    ui_print "- Extracting module files"
    unzip -o "$ZIPFILE" 'profiles/*' -d $MODPATH >&2
    mv $MODPATH/profiles/sdm855/system $MODPATH/
    rm -rf $MODPATH/profiles
  ;;
  "sdm845")
    ui_print "- Extracting module files"
    unzip -o "$ZIPFILE" 'profiles/*' -d $MODPATH >&2
    mv $MODPATH/profiles/sdm845/system $MODPATH/
    rm -rf $MODPATH/profiles
  ;;
  "sm6150")
    ui_print "- Extracting module files"
    unzip -o "$ZIPFILE" 'profiles/*' -d $MODPATH >&2
    mv $MODPATH/profiles/sdm675_730/system $MODPATH/
    rm -rf $MODPATH/profiles
  ;;
  "sdm710")
    ui_print "- Extracting module files"
    unzip -o "$ZIPFILE" 'profiles/*' -d $MODPATH >&2
    mv $MODPATH/profiles/sdm710/system $MODPATH/
    rm -rf $MODPATH/profiles
  ;;
  esac
}

# Custom Functions for Install AND Uninstall - You can put them here
