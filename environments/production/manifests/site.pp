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

node 'node1' {
file { '/root/4.txt':
        ensure => present,
        content => "uptime is: ${facts['system_uptime']['uptime']}\n",
        }
}

node default {
}
