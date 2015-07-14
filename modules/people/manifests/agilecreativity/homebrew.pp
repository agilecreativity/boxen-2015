class people::agilecreativity::homebrew {
  ## build essentials
  #include cmake
  #include autoconf
  #include sysctl

  $env = {
    packages => {
      brew   => [
        'wget',
        'ssh-copy-id',
        #'htop',
        #'unrar',
        #'tree',
        'nmap',
        'awscli',
        'md5sha1sum',
        'gist',
        'asciinema',
        # 'boot2docker',
        # 'docker',
        'redis',
        'sqlite'
        # 'git-extras',
        # 'memcached',
        # 'boost',
        # 'boost-build',
        # 'ghostscript',
        # 'git-tig',
        # 'ant',
        # 'maven',
        # 'gradle221',
        # 'groovy'
      ]
    }
  }

  package { $env['packages']['brew']:
    provider => 'homebrew'
  }
}
