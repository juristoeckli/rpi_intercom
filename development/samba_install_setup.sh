echo "update"
echo"***************************************************************"
apt-get update
echo ""
echo ""
echo "**************************************************************"
echo "Install samba"
echo "**************************************************************"
apt-get install samba samba-common-bin

echo ""
echo ""
echo ""
echo "**************************************************************"
echo " Configure samba"
echo "**************************************************************"
cd ..
path=$PWD
echo "Devolopment Share:"
echo $path


echo "[intercom]" >> /etc/samba/smb.conf
echo "path = $path" >> /etc/samba/smb.conf
echo "writeable=Yes" >> /etc/samba/smb.conf
echo "create mask=0777" >> /etc/samba/smb.conf
echo "directory mask=0777" >> /etc/samba/smb.conf
echo "public=no" >> /etc/samba/smb.conf

chmod -R 777 $path
echo ""
echo ""
echo ""
echo "**************************************************************"
echo 'create Samba User "pi"'
smbpasswd -a pi

echo ""
echo ""
echo ""
echo "**************************************************************"
echo "Restart samba"
echo ""
systemctl restart smbd
systemctl status smbd

echo ""
echo ""
echo ""
echo "**************************************************************"
echo "DONE"
echo ""
echo "Connect to Share using the following IP:"
ifconfig

exit 0
