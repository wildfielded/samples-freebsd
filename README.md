# FreeBSD configuration samples    
It should be keep in mind that here are not only files ready for work, but also assemblies from different cases as references.    
Based on my dummy experience.    
1. **loader.conf**    
[**`/boot/loader.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/boot/loader.conf)    
- Console in text-mode    
- jme driver has some bugs on particular hardware    
----
2. **.cshrc**    
[**`/root/.cshrc`**](https://github.com/wildfielded/samples-freebsd/blob/master/root/.cshrc)    
[**`/usr/home/ded/.cshrc`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/home/ded/.cshrc) - Some useful tuning, when working in **tcsh**    
----
3. **Locale**    
[**`/root/.login_conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/root/.login_conf)    
[**`/usr/home/ded/.login_conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/home/ded/.login_conf) - Setting up KOI8-R locale    
----
4. **Proxy** configuration    
[**`/root/.subversion/servers`**](https://github.com/wildfielded/samples-freebsd/blob/master/root/.subversion/servers) - For **svn**    
[**`/usr/local/etc/pkg.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/pkg.conf) - For **pkg**    
[**`/etc/csh.cshrc`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/csh.cshrc) - System-wide config for **csh**    
[**`/etc/profile`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/profile) - System-wide config for **sh**    
----
5. **Build Kernel and World**    
[**`/etc/src.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/src.conf)    
[**`/etc/src-env.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/src-env.conf)    
[**`/etc/make.conf`**]() - For building custom system, custom kernel, and for custom ports    
[**`/usr/src/sys/amd64/conf/BSDSRV`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/src/sys/amd64/conf/BSDSRV) - Kernel config for 11.2 (bare metal)    
----
6. **One** image for **many** different servers    
Let's suppose, for instance, that we have 5 servers with different functional (external - primary, secondary, tester; internal - primary, secondary).    
But they filesystems are identical (except of some logs, tmp-files, etc.)    
[**`/etc/rc.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/rc.conf) - rc.conf    
[**`/etc/crontab`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/crontab) - Tasks for different servers    
[**`/etc/newsyslog.conf_BFP`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/newsyslog.conf_BFP) - Do not forget file rotation (search this filename in /etc/crontab)    
[**`/etc/syslog.conf_B`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/syslog.conf_B) - Logging for one external server    
[**`/usr/local/etc/rsync/rsyncd.conf_BFP`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/rsync/rsyncd.conf_BFP) - Modules set for periodic files synchronization via crontab    
----
7. **SSH**    
[**`/etc/ssh/ssh_config`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/ssh/ssh_config) - +Old ssh clients and Git accounts    
[**`/etc/ssh/sshd_config`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/ssh/sshd_config) - It works    
----
8. **Inetd** sweet **Inetd** =)    
When you urgently temporarily need FTP, RSH, TFTP, POP3 without third-party daemons,    
[**`/etc/inetd.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/inetd.conf) - this is for you.    
[**`/etc/pam.d/rsh`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/pam.d/rsh) - One line changed for root's remote shell
----
9. **Squid**    
[**`/usr/local/etc/squid/squid.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/squid/squid.conf) - ACLs, logs, peering/sibling, how could we live without it?    
----
10. **Bind**    
[**`/usr/local/named/usr/local/etc/namedb/`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/named/usr/local/etc/namedb) - All the given configs are only for one external DNS-server with chrooted Bind    
----
11. **Apache**    
[**`/usr/local/etc/apache24/`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/apache24) - Nothing special, just work.    
----
12. **Sendmail**... Yes, I can!    
[**`/etc/mail/`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/mail) - All the given configs are only for one external mail server    
[**`/etc/mail/sentinel/sentinel.cf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/mail/sentinel/sentinel.cf) - Very old and simple mailfilter    
----
13. **PPPoE** uplinks configuration    
[**`/etc/ppp/`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/ppp) - Configs for 2 providers (Primary or Secondary, not simultaneously)    
[**`/etc/rc.conf_PPPoE`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/rc.conf_PPPoE) - PPPoE-related additions to **rc.conf**    
[**`/etc/start_if.vlan100`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/start_if.vlan100) - When a provider binds a specific MAC-address on its equipment    
----
14. Unsorted    
[**`/etc/adduser.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/adduser.conf) - Template for adding simple mailuser    
[**`/etc/devfs.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/devfs.conf) - For workstation and notebook    
[**`/etc/fstab`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/fstab) - Add procfilesystem    
[**`/etc/sysctl.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/sysctl.conf) - System tuning    
[**`/usr/local/www/apache24/data/wpad.dat`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/www/apache24/data/wpad.dat) - Auto proxy configuration sample    
----
