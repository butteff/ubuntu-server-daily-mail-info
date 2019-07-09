<h2>Daily monitoring server information to your e-mail.</h2>

script helps you to take an every day e-mail about your server.

<h2>What script can do:</h2>

With this script you can see in your mail:

0. Your clamav antivirus information 
1. Which ports are open
2. How many users do you have in your system
3. What hardware temperature is on your server right now.
4. Canonical hello information about your processes, memory, hdd usage, how many users are "logged in" right now (and other info, that you can see on your login screen).
5. Backup log (if you do it from a script to backup.log)
6. Any mounted hdd size.
7. Differents in your packages, new packages in the system

Script is easy and you can configure it like you want or add something else.

<h2>INSTALLATION:</h2>

<ul>
<li>Install this software:

<code>sudo apt-get install clamav postfix mailutils sensors hddtemp</code></li>

<li>Start the Clamav antivirus

<code>sudo /etc/init.d/clamav-freshclam start</code></li>

<li>Configure your postfix:

<code>dpkg-reconfigure postfix</code></li>

<li>Find your sensors

<code>sensors-detect</code></li>

<li>Create a list of your packages (do it in the script directory):

<code>dpkg --get-selections > packages</code></li>

<li>Don't forget to <strong>change your paths and mail address in the dailymail.sh</strong> script and give to them executable rights

<code>chmod +x dailymail.sh</code></li>


<li>For a daily info you might create a crontab entry ( sudo crontab -e ), for example, this rule is for an every day mail at 5 AM:

<code>00 5 * * * ./dailymail.sh</code></li>



