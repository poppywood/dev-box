class tools {
    $packages = ['python-software-properties', 'curl', 'imagemagick', 'build-essential','libreoffice', 'default-jre', 'unoconv']
    
    package { $packages:
        ensure => installed,
    }
}
