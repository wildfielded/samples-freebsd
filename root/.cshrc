# $FreeBSD$

alias ll	'ls -la | more'

#####=====----- Trivials -----=====#####
alias sr	shutdown -r now
alias sp	shutdown -p now

alias m		mount -p

#####=====----- Mount share in MS AD world -----=====#####
alias diskU	mount_smbfs -E koi8-r:cp866 -I 192.168.192.168 -W DOMAIN //LoginDed@srv-dfs-hostname/b$ /mnt/shareB
alias uU	umount -v /mnt/shareB

#####=====----- More convenient -----=====#####
setenv	EDITOR	/usr/bin/ee
setenv	PAGER	/usr/bin/more

#####=====----- Example for access through Proxy with authorization -----=====#####
setenv	FTP_PROXY	'http://UNIXproxyuser:password123@192.168.192.168:3128'
setenv	HTTP_PROXY	'http://UNIXproxyuser:password123@192.168.192.168:3128'
setenv	HTTPS_PROXY	'http://UNIXproxyuser:password123@192.168.192.168:3128'

if ($?prompt) then
	# An interactive shell -- set some stuff up
	##### set prompt = "%N@%m:%~ %# "
	set prompt = "`/bin/hostname -s | /usr/bin/tr '[:lower:]' '[:upper:]'`# "
	set promptchars = "%#"
	##### Other default lines
	##### ...

endif
