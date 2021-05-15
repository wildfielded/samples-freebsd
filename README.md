# Configuration samples for FreeBSD
Based on my dummy experience.
1. Screen text mode    
[**`/boot/loader.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/boot/loader.conf) - Console in text-mode    
----
2. **cshrc**    
[**`/root/.cshrc`**](https://github.com/wildfielded/samples-freebsd/blob/master/root/.cshrc)    
[**`/usr/home/ded/.cshrc`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/home/ded/.cshrc) - Some useful tuning, when working in **tcsh**    
----
3. Locale    
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
6. Kernel    
[**`/usr/src/sys/amd64/conf/BSDSRV`**](https://github.com/wildfielded/samples-freebsd/blob/master/usr/src/sys/amd64/conf/BSDSRV) - Kernel config for 11.2 (bare metal)    
----
7. One image for many different servers    
Let's suppose, for instance, that we have 4 servers with identical file systems but different functional.    
[**`/etc/rc.conf`**](https://github.com/wildfielded/samples-freebsd/blob/master/etc/rc.conf) - rc.conf    
----
