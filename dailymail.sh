#!/bin/sh
# script made by butteff from adminicana.ru/en.html and webvir.ru companys
clamscan -r -i / > /scr/mail
printf "\n\nopen ports:\n\n" >> /scr/mail
netstat -anltp | grep "LISTEN" >> /scr/mail
printf "\n\nusers:\n\n" >> /scr/mail
awk -F: '{if ($3>=1000) print $1}' /etc/passwd >> /scr/mail
printf "\n\ntemperature:\n\n" >> /scr/mail
hddtemp /dev/sda >> /scr/mail
hddtemp /dev/sdb >> /scr/mail
sensors >> /scr/mail
printf "\n\nsystem info:\n\n" >> /scr/mail
landscape-sysinfo >> /scr/mail
printf "\n\nbackup log:\n\n" >> /scr/mail
cat /backup.log >> /scr/mail
printf "\n\any hdd size:\n\n" >> /scr/mail
df /dev/sda >> /scr/mail
mail -s "server daily info" yourmail@gmail.com < /scr/mail





