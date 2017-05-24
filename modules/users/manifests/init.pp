# Class: users
# ===========================
#
# Full description of class users here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'users':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#

$var4 = "I am global variable"
class users ($var3) {
    $var = 'Hallo I am variable'
    file { '/root/f1.txt':
        ensure => present,
        content => "What is the var says in double quotes: $var \n",
    }

    file { '/root/f3.txt':
        ensure => present,
        content => "What is the var from class resource : $var3 \n",
    }

    $var4 = '\"I am local variable to class\"'
    file { '/root/f4.txt':
        ensure => present,
        content => "What is the var : $var4 and $::var4",
    }
}
