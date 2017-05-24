class logic {

    if $facts['$hostname'] == 'node1' {
        file { '/root/f5.txt':
           ensure => present,
           content => "If success for $hostname",
        }
    }
    elsif $facts['$hostname'] == 'node2' {
        file { '/root/f5.txt':
           ensure => present,
           content => "If success for $hostname",
        }
    }
}
