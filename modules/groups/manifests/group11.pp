class groups::group11 {
    group { 'group11':
          gid => '1001',
          ensure => present,
    }
}
