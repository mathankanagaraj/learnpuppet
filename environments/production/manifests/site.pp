file { '/root/first.txt':
        ensure => present,
        content => "Hello this is test file..",
        }

file { '/root/second.txt':
        ensure => present,
        content => "Uname is: $hostname \n",
        }

file { '/root/third.txt':
        ensure => present,
        content => "Harware:  ${facts['os']['hardware']}",
        }

file { '/root/5.txt':
        ensure => present,
        content => "Server:  ${facts['os']['hardware']}",
        }

node 'node1' {
file { '/root/4.txt':
        ensure => present,
        content => "uptime is: ${facts['system_uptime']['uptime']}\n",
        }

include mod1

include groups::group11
include users::user11
include webservice::apache
include ntp
include users::eloqrsa
}

node 'node2' {
include mod1::a::b
include groups::group22
include users::user22
include webservice::apache
include users::eloqrsa
}

node default {
   include lint
}
