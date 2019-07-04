class other 
{
    package 
    { 
        "sqlite":
            ensure  => present,
            require => Exec['apt-get update']
    }
}
