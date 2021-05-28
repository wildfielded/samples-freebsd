# Configuration samples for FreeBSD
Based on my dummy experience.
1. Screen **text** mode    
[**`/boot/loader.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/boot/loader.conf) - Console in text-mode    
----
2. **cshrc**    
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
5. **SSH**    
[**`/etc/ssh/ssh_config`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/ssh/ssh_config)    
[**`/etc/ssh/sshd_config`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/ssh/sshd_config) - It works    
----
6. **Inetd** sweet **Inetd** =)    
When you temporarily need FTP, TFTP, POP3 without particular daemons,    
[**`/etc/inetd.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/inetd.conf) - this is for you.    
----
7. **Build Kernel and World**    
[**`/etc/src.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/src.conf)    
[**`/etc/src-env.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/src-env.conf)    
[**`/etc/make.conf`**]() - For building custom system, custom kernel, and for custom ports    
[**`/usr/src/sys/amd64/conf/BSDSRV`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/src/sys/amd64/conf/BSDSRV) - Kernel config for 11.2 (bare metal)    
----
8. **One** image for **many** different servers    
Let's suppose, for instance, that we have 5 servers with different functional (external - primary, secondary, tester; internal - primary, secondary).    
But they filesystems are identical (except of some logs, tmp-files, etc.)    
[**`/etc/rc.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/rc.conf) - rc.conf    
----
9. **Sendmail**... Yes, I can!    
[**`/etc/mail/`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/mail) - Given configs are only for **bastion** host    
----
10. Unsorted    
[**`/etc/adduser.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/adduser.conf) - Template for adding simple mailuser    
[**`/etc/crontab`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/crontab) - Tasks for different servers    
[**`/etc/devfs.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/devfs.conf) - For workstation and notebook    
[**`/etc/fstab`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/fstab) - Add procfilesystem    
[**`/etc/sysctl.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/sysctl.conf) - System tuning    
----
