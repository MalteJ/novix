# Bootstrapping Arch Linux 


### Understanding UEFI(EFI) vs BIOS

#### How you boot bro

### Bootable USB

### DD, etcher, beyond

#### Understanding your USB 

#### Packages need updating
#### Kernel gonna Kernel

#### Setting up disks

### Installing "linux"

```
pacstrap base base-devel linux linux-headers linux-firmware net-tools wget curl nano sudo grub efibootmgr dosfstools os-prober mtools openssh networkmanager nmap

genfstab -p /mnt /mnt/etc/fstab

```

## Installing "your new OS"


```bash 
#!/bin/bash
# -------------------------------
#  [Setting up the Locale]
# 
#
USER="yakko"
LANG="en_US.UTF-8"
CHAR="UTF-8"
LOCALE="${LANG} ${CHAR}"
ISO="en_US ISO-8859-1"


# -------------------------------
#  [Setting up the Locale]
# 
#
echo "#" >> /etc/locale.gen
echo "#" >> /etc/locale.gen
echo "# ***** [Nova Boot] ******" >> /etc/locale.gen
echo "#" >> /etc/locale.gen
echo "${LOCALE}" >> /etc/locale.gen
echo "${ISO}" >> /etc/locale.gin
echo "#" >> /etc/locale.gen
locale-gen
echo LANG=${LANG} > /etc/locale.conf
export LANG=${LANG}


ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
hwclock --systohc --utc

passwd
useradd -mg users -G wheel,storage,power -s /bin/bash ${USER}
passwd ${USER}
chage -d 0 ${USER}
EDITOR=nano visudo

echo "# mkdir /boot/EFI"
echo "# mount /dev/sda1 /boot/EFI"
echo "# grub-install --target=x86_64-efi  --bootloader-id=GRUB --recheck"
```

