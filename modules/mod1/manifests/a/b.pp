class mod1::a::b {
   file {'/root/c.txt':
         ensure => present,
         content => "New class B..\n",
   }

   include mod1::a::c
}
