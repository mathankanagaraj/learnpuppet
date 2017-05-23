class groups::group22 {
    group { 'group22':
          gid => '1002',
          ensure => present,
    }
}
