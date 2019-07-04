$use_xdebug = "1"

Exec 
{
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

stage { 'first':
    before => Stage['second'],
}

stage { 'second':
    before => Stage['third'],
}

stage { 'third':
    before => Stage['main']
}

class { "apt_get::update":
    stage  => first,
}

class { 'tools':
    stage => second,
}

class { 'php':
    stage => third,
}

include apt_get::update
include tools
include git
include vim
include avahi-daemon
include mysql
include bootstrap
include other #curl and sqlite
include php
include nginx
include supervisor
include sphinx
include redis
include nodejs
include composer
include beanstalkd
include ngrok