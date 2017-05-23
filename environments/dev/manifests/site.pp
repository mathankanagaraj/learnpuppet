node 'node1' {
    file { '/root/devenv.txt':
           ensure => present,
           content => "This is new Dev environment",
    }
}
