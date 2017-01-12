# == Class: htop
#
# Full description of class htop here.
#

#
# === Examples
#
# include htop
# 
#
# === Authors
#
# Author Name <shivrajsys@gmail.com>
#
# === Copyright
#
# Copyright 2014.
#
class tdsgit-htop {  
	case $::osfamily {
    		'RedHat':{
			$cmd = 'sudo yum install htop'
			}
		'Debian':{
			$cmd = 'sudo apt-get install htop'
			}
		default: {
      			fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    			}

		}
	exec {	"install_htop":
		path    => "/usr/bin/:/bin/",
		command => "$cmd"
		}		
				

}
include htop
