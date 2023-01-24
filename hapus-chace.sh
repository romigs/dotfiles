#!/bin/bash


[ "$UID" -eq 0 ] || exec sudo "$0" "$@"
#cek cache dari aplikasi
du -sh /var/cache/apt/archives

#Bersihkan semua yang ada di file log
logs=`find /var/log -type f`
for i in $logs
 do
     > $i
 done
 
#membersihkan cache 
apt-get clean && apt-get autoclean
apt-get autoremove -y

#Gunakan aplikasi deborphan untuk membersihan library 
apt install -y deborphan
deborphan | xargs sudo apt-get -y remove --purge

# Bersihkan semua file yang ada di tong sampah
rm -rf /home/*/.local/share/Trash/*/**
rm -rf /root/.local/share/Trash/*/*

# Hapus semua log yang sudah lama dan sudah di archive
find /var/log -type f -regex ".*\.gz$" | xargs rm -Rf
find /var/log -type f -regex ".*\.[0-9]$" | xargs rm -Rf
 
 echo
 echo "Proses bersih-bersih sudah selesai!"
