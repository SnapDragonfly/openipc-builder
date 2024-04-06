#!/bin/sh
#
# Perform basic settings on a known IP camera
#
#
# Set custom upgrade url
#
fw_setenv upgrade 'https://github.com/OpenIPC/builder/releases/download/latest/gk7205v300_lite_elsar-v1-nor.tgz'
#
#
# Set custom majestic settings
#
#cli -s .system.webAdmin disabled
#cli -s .system.staticDir /var/www/majestic
#cli -s .nightMode.enabled true
#cli -s .nightMode.irCutPin1 8
#cli -s .nightMode.irCutPin2 9
#cli -s .nightMode.backlightPin 14
#cli -s .nightMode.minThreshold 2000
#cli -s .nightMode.maxThreshold 14000
#cli -s .audio.speakerPin 55
cli -s .video0.codec h264
#
#
# Set wlan device and credentials if need
#
#fw_setenv wlandev unknown
#fw_setenv wlanssid Router
#fw_setenv wlanpass 12345678
#
adduser viewer -s /bin/false -D -H
echo viewer:123456 | chpasswd
#

exit 0

