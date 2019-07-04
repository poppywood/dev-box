class nodejs {

	exec { 'add_ruby':
    	command => '/usr/bin/add-apt-repository ppa:brightbox/ruby-ng-experimental'
    }

	exec { 'add_node_repo':
    	command => '/usr/bin/add-apt-repository ppa:chris-lea/node.js'
    }

    exec { 'update_node_repo':
        command => '/usr/bin/apt-get update',
        require => Exec['add_node_repo']
    }
    
    exec { 'install gem compass':
    	command => 'sudo gem install compass',
    	require => Exec['update_node_repo'],
  	}

  	exec { 'install gem css_parser':
    	command => 'sudo gem install css_parser',
    	require => Exec['update_node_repo'],
  	}

    $packages = [ 'nodejs' ]
    package { $packages: 
        ensure => present,
        require => Exec['update_node_repo'],
    }
    
    package {'grunt-cli':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
    
    package {'less':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'grunt':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	
  	package {'grunt-contrib-less':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'grunt-contrib-cssmin':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'grunt-contrib-copy':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
	
  	package {'grunt-contrib-clean':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
	
  	package {'grunt-contrib-concat':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'grunt-contrib-uglify':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'grunt-usemin':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'grunt-rev':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'grunt-express':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'grunt-contrib-watch':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
	
  	package {'grunt-curl':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'hogan.js':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'nodeunit':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
   	package {'grunt-contrib-nodeunit':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	 	
  	package {'grunt-run-grunt':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	  		  	
  	package {'grunt-concurrent':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  		  	
  	package {'grunt-git-describe':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	
  	package {'load-grunt-config':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	  	
  	package {'gulp':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	  	  	
  	package {'bower':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
	
  	package {'yo':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
	
  	package {'angular':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	    	  	  	  	  	
  	package {'angular-mocks':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}  	

  	package {'mocha':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	} 	 	
  	  	
  	package {'karma':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	  	  	
  	package {'karma-cli':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	  	  	
  	package {'generator-karma':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	  	  	  	
  	package {'generator-angular':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	  	  	  	
  	package {'protractor':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
   	  	  	  	
  	package {'karma-coverage':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	  	  	  	  	
  	package {'karma-mocha':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
   	  	  	  	  	
  	package {'karma-sinon-chai':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}	 
    	  	  	  	  	
  	package {'karma-junit-reporter':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
	
  	package {'karma-ng-html2js-preprocessor':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
    	  	  	  	  	
  	package {'karma-html-reporter':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}
  	    	  	  	  	  	
  	package {'karma-phantomjs-launcher':
    	ensure   => present,
    	provider => 'npm',
    	require  => Package['nodejs'],
	}

} 
