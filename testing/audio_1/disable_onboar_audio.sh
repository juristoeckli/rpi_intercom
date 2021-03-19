echo "blacklist snd_bcm2835" >> /etc/modprobe.d/alsa-blacklist.conf

echo "Config changed"
echo "Open /lib/modprobe.d/aliases.conf and comment out the line options snd-usb-audio index=-2"
echo "you nedd to Reboot the machine for the change to take effect!!"
