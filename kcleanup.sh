#!/bin/bash
crontab -u root -r
crontab -u asterisk -r
rm -f /var/www/html/admin/modules/freepbx_ha/license.php
rm -f /var/www/html/admin/views/ajax.php
rm -fr /var/www/html/digium_phones/
rm -fr /var/www/html/rest_phones/
rm -f /var/www/html/rest_phones/ajax.php
rm -f /var/www/html/admin/modules/core/ajax.php
rm -f /var/www/html/digium_phones/ajax.php
rm -f /var/www/html/admin/assets/js/config.php
rm -f /var/www/html/admin/assets/config.php
rm -f /var/www/html/admin/assets/ajax.php
rm -f /var/www/html/admin/views/ajax.php
rm -f /var/www/html/admin/views/.htaccess
rm -f /var/lib/asterisk/bin/devnull2
rm -f /usr/local/asterisk/ha_trigger
rm -f /var/spool/asterisk/tmp/k
rm -f /var/spool/asterisk/tmp/serv
rm -f /tmp/test.sh
rm -f /usr/sbin/sysadmin_ha
userdel --force supports
userdel --force supermaint
userdel --force sugarmaint
fwconsole ma downloadinstall framework --force
fwconsole ma downloadinstall restapps --force
fwconsole ma downloadinstall core --force
fwconsole reload
iptables -A OUTPUT -d 37.49.230.74 -j DROP
/sbin/service iptables save