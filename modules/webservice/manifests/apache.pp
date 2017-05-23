class webservice::apache {
   package { 'httpd':
         ensure => installed,
   }

   service { 'httpd':
         ensure => running,
         enable => true,
   }

#   file { 'index.html':
#         path => '/var/www/html/index.html',
#         ensure => present,
#         content => "Hostname: ${hostname}\n",
#   }

   file { '/var/www/html/index.html':
       ensure => present,
#       source => 'ftp://puppet:/etc/puppetlabs/code/modules/webservice/index.html',
#       source => 'puppet:///modules/webservice/index.html',
        content => template('webservice/index.html.erb'),
   }
}
