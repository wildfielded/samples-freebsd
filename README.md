# FreeBSD configuration samples    
It should be keep in mind that here are not only files ready for work, but also assemblies from different cases as references.    
Based on my dummy experience.    
1. **loader.conf**    
[**`/boot/loader.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/boot/loader.conf)    
- Console in text-mode    
- jme(4) driver has some bugs on particular hardware    
----
2. **.cshrc**    
[**`/root/.cshrc`**](https://github.com/wildfielded/samples-freebsd/blob/master/root/.cshrc)    
[**`/usr/home/ded/.cshrc`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/home/ded/.cshrc) - Some useful tuning, when working in **`tcsh`**    
----
3. **Locale**    
[**`/root/.login_conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/root/.login_conf)    
[**`/usr/home/ded/.login_conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/home/ded/.login_conf) - Setting up KOI8-R locale    
----
4. **Proxy** configuration    
[**`/root/.subversion/servers`**](https://github.com/wildfielded/samples-freebsd/blob/master/root/.subversion/servers) - For **`svn`**    
[**`/usr/local/etc/pkg.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/pkg.conf) - For **`pkg`**    
[**`/etc/csh.cshrc`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/csh.cshrc) - System-wide config for **`csh`**    
[**`/etc/profile`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/profile) - System-wide config for **`sh`**    
----
5. **Build Kernel and World**    
[**`/etc/src.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/src.conf)    
[**`/etc/src-env.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/src-env.conf)    
[**`/etc/make.conf`**]() - For building custom system, custom kernel, and custom ports    
[**`/usr/src/sys/amd64/conf/BSDSRV`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/src/sys/amd64/conf/BSDSRV) - Kernel config for 11.2 (bare metal)    
----
6. **One** image for **many** different servers    
Let's suppose, for instance, that we have 5 servers with different functional (external - primary, secondary, tester; internal - primary, secondary).    
But they filesystems are identical (except of some logs, tmp-files, etc.)    
[**`/etc/rc.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/rc.conf) - Main config    
[**`/etc/crontab`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/crontab) - Tasks for different servers    
[**`/etc/newsyslog.conf_BFP`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/newsyslog.conf_BFP) - Do not forget file rotation (search this filename in /etc/crontab)    
[**`/etc/syslog.conf_B`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/syslog.conf_B) - Logging for one external server    
[**`/usr/local/etc/rsync/rsyncd.conf_BFP`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/rsync/rsyncd.conf_BFP) - Modules set for periodic files synchronization via cron    
----
7. Firewall (**ipfw**)    
[**`/etc/rc.fw`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/rc.fw) - Something for references (creepy censored)    
----
8. **SSH**    
[**`/etc/ssh/ssh_config`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/ssh/ssh_config) - +Old ssh clients and Git accounts    
[**`/etc/ssh/sshd_config`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/ssh/sshd_config) - It works    
----
9. **Inetd** sweet **Inetd** =)    
When you urgently temporarily need FTP, RSH, TFTP, POP3 without third-party daemons,    
[**`/etc/inetd.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/inetd.conf) - this is for you.    
[**`/etc/pam.d/rsh`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/pam.d/rsh) - One line changed for root's remote shell
----
10. **Squid**    
[**`/usr/local/etc/squid/squid.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/squid/squid.conf) - ACLs, logs, peering/sibling, how could we live without it?    
----
11. **Bind**    
[**`/usr/local/named/usr/local/etc/namedb/`**](https://github.com/wildfielded/samples-freebsd/tree/master/usr/local/named/usr/local/etc/namedb) - All the given configs are only for one external DNS-server with chrooted Bind    
----
12. **Apache**    
[**`/usr/local/etc/apache24/`**](https://github.com/wildfielded/samples-freebsd/tree/master/usr/local/etc/apache24) - Nothing special, just work.    
[**`/usr/local/www/apache24/data/wpad.dat`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/www/apache24/data/wpad.dat) - Auto proxy configuration sample    
[**`/usr/local/www/apache24/error/`**](https://github.com/wildfielded/samples-freebsd/tree/master/usr/local/www/apache24/error) - Old-way customized error pages    
[**`/usr/local/www/apache24/icons/`**](https://github.com/wildfielded/samples-freebsd/tree/master/usr/local/www/apache24/icons) - Ancient smiles collection    
----
13. **Sendmail**... Yes, I can!    
[**`/etc/mail/`**](https://github.com/wildfielded/samples-freebsd/tree/master/etc/mail) - All the given configs are only for one external mail server    
[**`/etc/mail/sentinel/sentinel.cf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/mail/sentinel/sentinel.cf) - Very old and simple mailfilter    
----
14. **ProFTPd** replaces generic **`ftpd`**    
[**`/usr/local/etc/proftpd/proftpd.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/proftpd/proftpd.conf) - Just anonymous access    
----
15. **MRTG**    
[**`/usr/local/etc/mrtg/mrtg.cfg`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/mrtg/mrtg.cfg) - Config sample    
----
16. **PPPoE** uplinks configuration    
[**`/etc/ppp/`**](https://github.com/wildfielded/samples-freebsd/tree/master/etc/ppp) - Configs for 2 providers (Primary or Secondary, not simultaneously)    
[**`/etc/rc.conf_PPPoE`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/rc.conf_PPPoE) - PPPoE-related additions to **`rc.conf`**    
[**`/etc/start_if.vlan100`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/start_if.vlan100) - When a provider binds a specific MAC-address on its equipment    
----
17. **DHCP** experiments    
[**`/usr/local/etc/dhcpd`**](https://github.com/wildfielded/samples-freebsd/tree/master/usr/local/etc/dhcpd) - Something works, something doesn't.    
----
18. **RADIUS/TACACS+** experiments    
[**`/usr/local/etc/raddb`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/raddb) - Works as is. Some adds can be found in **`rc.conf`** and **`syslog.conf`**    
[**`/usr/local/etc/tac_plus.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/tac_plus.conf) - As well    
----
19. Unplugged    
[**`/etc/adduser.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/adduser.conf) - Template for adding simple mailuser    
[**`/etc/devfs.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/devfs.conf) - For workstation and notebook    
[**`/etc/devfs.rules`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/devfs.rules) - Experiment fo **`bpf`**    
[**`/etc/fstab`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/fstab) - Add procfilesystem    
[**`/etc/sysctl.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/sysctl.conf) - System tuning    
[**`/usr/local/etc/cvsupfile`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/cvsupfile) - Oldschool way to get sources tree for upgrade    
[**`/usr/local/etc/cvsupports`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/cvsupports) - Oldschool way to get ports tree for upgrade    
[**`/usr/local/etc/pkgtools.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/local/etc/pkgtools.conf) - Some adds in default file for pleasure    
----
