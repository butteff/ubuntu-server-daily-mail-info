<h2>Daily monitoring server information to your e-mail.</h2>

script made by butteff from and helps you take every day e-mail about your server.
sorry for my bad english ;)


<h2>What script can do:</h2>

With this script you can see in your mail:

0. Your clamav antivirus information 
1. Which ports are open
2. How many users in your system
3. What hardware temperature is on your server right now.
4. Canonical hello information about your processes, memory, hdd usage, how many users login in right now and other, that you can see on your login.
5. Backup log (if you do it from script to backup.log)
6. Any mounted hdd size.

Script is easy and you can configure it, like you want or add something else.

<h2>INSTALLATION:</h2>

Russian instruction <a href="http://linuxstar.ru/poluchenie-informacii-o-sisteme-ezhednevno-na-pochtu-v-ubuntu-server.html">is here</a> 

<ul>
<li>You might install this software:

<code>sudo apt-get install clamav postfix mailutils sensors hddtemp</code></li>

<li>Starting clamav

<code>sudo /etc/init.d/clamav-freshclam start</code></li>

<li>Configure your postfix:

<code>dpkg-reconfigure postfix</code></li>

<li>Find your sensors

<code>sensors-detect</code></li>

<li>Don't forget to <strong>change your paths and mail into dailymail.sh</strong> script and give them executable rights

<code>chmod +x dailymail.sh</code></li>


<li>For daily info you might create crontab entry ( sudo crontab -e ), for example, every day at 5 AM:

<code>00 5 * * * ./dailymail.sh</code></li>

<h2>Thank you!</h2>
Thank you for using my script.<br/>
Also I offer some services, may be this my projects will be interesting for you:
<a href="http://adminicana.ru/en.html">adminicana</a> and <a href="http://webvir.ru">webvir</a>

