SKIPUNZIP=0
ASH_STANDALONE=0

on_install()
{
# Underclock CPU
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
echo 0600000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq

chmod 644 /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq
echo 0600000 > /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq

chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo 0600000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

# Underclock GPU
chmod 644 /sys/class/kgsl/kgsl-3d0/max_pwrlevel
echo 15 > /sys/class/kgsl/kgsl-3d0/max_pwrlevel

chmod 644 /sys/class/kgsl/kgsl-3d0/devfreq/userspace/set_freq
echo 150000000 > /sys/class/kgsl/kgsl-3d0/devfreq/userspace/set_freq

}

set_perm_recursive $MODPATH 0 0 0755 0644