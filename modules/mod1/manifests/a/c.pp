class mod1::a::c {
    file {'/root/withinmodule.txt':
          ensure => present,
          content => "I am within moddule file..\n",
    } 

}
