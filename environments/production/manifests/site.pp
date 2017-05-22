file { '/root/first.txt':
        ensure => present,
        content => "Hello this is test file..",
        }
