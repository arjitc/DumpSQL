DumpSQL
=======

DumpSQL is a no-brainer mySQL dump and backup script written in bash.

Features:
* Dumps database and backup via SCP.

Note:
I take no responsibility if this script will work for you as designed, you have to test and make sure this script will work in your environment as designed.

Howto:
Edit dump.sh and set the mysql user, mysql DB and mysql password and then set the remote host, remote host user, remote host SSH port and remote host password for SCP based backup.

Requirements:
SSHPass
> On CentOS : yum install sshpass

> On Debian/Ubuntu : apt-get install sshpass
