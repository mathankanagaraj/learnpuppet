class mod1 {
    file { '/root/mod1.txt':
            ensure => present,
            content => "Hello I am mod1..\n",
         }
}

