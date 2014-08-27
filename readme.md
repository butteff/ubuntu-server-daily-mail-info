Daily monitoring server information to your e-mail.

script made by butteff from http://adminicana.ru/en.html and http://webvir.ru comapnys and helps you take every day e-mail about your server.
russian instruction is here: http://linuxstar.ru/poluchenie-informacii-o-sisteme-ezhednevno-na-pochtu-v-ubuntu-server.html
sorry for my bad english ;)

You can see:

0. Your clamav antivirus information 
1. Which ports are open
2. How many users in your system
3. What hardware temperature is on your server right now.
4. Canonical hello information about your processes, memory, hdd usage, how many users login in right now and other, that you can see on your login.
5. Backup log (if you do it from script to backup.log)
6. Any mounted hdd size.

Script is easy and you can configure it, like you want or add something else.

<h1>INSTALLATION</h1>:

1. You might install this software:

sudo apt-get install clamav postfix mailutils sensors hddtemp

2. Starting clamav

sudo /etc/init.d/clamav-freshclam start

3. configure your postfix:

dpkg-reconfigure postfix

4. Find your sensors

sensors-detect



For daily info you might create crontab entry ( sudo crontab -e ), for example, every day at 5 AM:

00 5 * * * ./dailymail.sh




