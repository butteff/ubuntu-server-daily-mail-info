#!/bin/sh
# script made by butteff 
# https://github.com/butteff/ubuntu-server-daily-mail-info

#antivirus info:
clamscan -r -i / > /scr/mail

#open ports info:
printf "\n\nopen ports:\n\n" >> /scr/mail
netstat -anltp | grep "LISTEN" >> /scr/mail

#system users info:
printf "\n\nusers:\n\n" >> /scr/mail
awk -F: '{if ($3>=1000) print $1}' /etc/passwd >> /scr/mail

#temperature & sensors:
printf "\n\ntemperature:\n\n" >> /scr/mail
hddtemp /dev/sda >> /scr/mail
hddtemp /dev/sdb >> /scr/mail
sensors >> /scr/mail

#canonical hello info (memory, processes, hdd usage, users login in, ip and many other):
printf "\n\nsystem info:\n\n" >> /scr/mail
landscape-sysinfo >> /scr/mail

#backup log adding to mail:
printf "\n\nbackup log:\n\n" >> /scr/mail
cat /backup.log >> /scr/mail

#any mounted HDD info:
printf "\n\any hdd size:\n\n" >> /scr/mail
df /dev/sda >> /scr/mail

#new packages in your system:
printf "newpackages:\n\n" >> /scr/mail
dpkg --get-selections > packages2
diff packages packages2 >> /scr/mail
rm -rf packages
mv packages2 packages

#mail send:
mail -s "server daily info" yourmail@gmail.com < /scr/mail





