class users::user22 {
   user { 'user22':
          uid => '1002',
          gid => '1002', 
          home => '/home/user22',
          groups => 'group22',
   }
}
