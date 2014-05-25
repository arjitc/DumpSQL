DumpSQL
=======

DumpSQL is a no-brainer mySQL dump and backup script written in bash.

Features:
* Dumps database and backup via SCP.

#### Note:
I take no responsibility if this script will work for you as designed, you have to test and make sure this script will work in your environment as designed.

Howto:
Edit dump.sh and set the mysql user, mysql DB and mysql password and then set the remote host, remote host user, remote host SSH port and remote host password for SCP based backup.

#### Requirements:
SSHPass
> On CentOS : yum install sshpass

> On Debian/Ubuntu : apt-get install sshpass

#### Debugging:
If the database isnt getting SCP'd to the remote server you have set, then do this,
> scp any_file_here remote_user@remote_host

You'll then get someting like
> The authenticity of host 'xx.xxxx.xxx (xxx.xxx.xxx.xxx)' can't be established.

> RSA key fingerprint is xxxxxxxxxxxxx.

> Are you sure you want to continue connecting (yes/no)? yes

> Warning: Permanently added 'xx.xxxx.xxx,xxx.xxx.xxx.xxx' (RSA) to the list of known hosts.

>root@xxx.xxx.xxx.xxx's password:

Now, just exit it by hitting CTRL + C and then try sh dump.sh agian.
