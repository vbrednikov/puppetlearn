class puppet::install {

  file { '/usr/local/bin/gem':
    ensure => 'link',
    target => '/opt/puppetlabs/puppet/bin/gem',
  }


    package {'r10k':
        ensure   => installed,
        provider => 'gem',
        require  => File['/usr/local/bin/gem'],
    }



}
