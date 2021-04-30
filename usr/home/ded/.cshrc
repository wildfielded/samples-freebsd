# $FreeBSD: releng/11.1/share/skel/dot.cshrc 278616 2015-02-12 05:35:00Z cperciva $
#

alias ll	'ls -la | more'

#####=====----- SSH with sophisticated logins -----=====#####
alias aaa	'ssh -l "admin-ded@172.22.46.18" nexpose-srv.dom'
alias bbb	'ssh -l "domain\admin-ded" acs-srv.dom'

#####=====----- More convenient -----=====#####
setenv	EDITOR	/usr/bin/ee
setenv	PAGER	/usr/bin/more

if ($?prompt) then
	# An interactive shell -- set some stuff up
	##### set prompt = "%N@%m:%~ %# "
	set prompt = "`/bin/hostname -s`> "
	set promptchars = "%#"
	##### Other default lines
	##### ...

endif
