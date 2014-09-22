#! /bin/bash
# Install and set up samba on Raspberry Pi so that the Pi user's home directory
# can be shared to- and mounted by- the connecting computer.

sudo apt-get install samba samba-common-bin -y

# Create SAMBA connection settings so that /home/pi can be shared, accessed, and
# edited by a connecting computer (OS X, Windows, Linux or other).
sudo tee -a /etc/samba/smb.conf >/dev/null <<SMB_CONF
  [pihome]
    comment= Pi Home
    path=/home/pi
    browseable=Yes
    writeable=Yes
    only guest=no
    create mask=0777
    directory mask=0777
    public=no
SMB_CONF

# Create a password for the pi user to use to access the Pi home folder via
# Samba.
echo -e "\nWhen the pi user tries to access the Pi home directory from another
computer, you will need to use a password. (suggestion: use the same password
that Pi uses to log in to the Raspberry Pi)\n"

sudo smbpasswd -a pi

# Restart Samba
sudo /etc/init.d/samba restart
