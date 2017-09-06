#!/usr/bin/expect
set i [lindex $argv 0]
	spawn ssh $i.host.bjike.com
	expect "(yes/no)?"
	send "yes\r"
	expect "~]#"
	send "exit\r"
	expect eof
