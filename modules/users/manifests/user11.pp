class users::user11 {
   user { 'user11':
          uid => '1001',
          gid => '1001', 
          home => '/home/user11',
          groups => 'group11',
   }
}
