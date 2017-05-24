node 'node1' {
    file { '/root/devenv.txt':
           ensure => present,
           content => "This is new Dev environment",
    }
    #include users
    $var1 = 'Hallo I am variable from site.pp'
    file { '/root/f2.txt':
        ensure => present,
        content => "What is the var says in double quotes: $var1 \n",
    }

    class { 'users':
        var3 => 'var3 from node1',
    }

    include logic
       
}

node 'node2' {
    class { 'users':
        var3 => 'var3 from node2',
    }

    include logic
}
