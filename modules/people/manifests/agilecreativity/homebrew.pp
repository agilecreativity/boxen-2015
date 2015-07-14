class people::agilecreativity::homebrew {
  ## build essentials
  #include cmake
  #include autoconf
  #include sysctl

  $env = {
    packages => {
      brew   => [
        'ag',
        #'ant',
        'asciinema',
        'awscli',
        #'boost',
        #'boost-build',
        #'boot2docker',
        'colordiff',
        'coreutils',
        'ctags-exuberant',
        #'docker',
        'dos2unix',
        #'ghostscript',
        'gist',
        'git-extras',
        'git-flow',
        'git-tig',
        #'gradle221',
        #'groovy',
        'htop',
        'htop-osx',
        #'maven',
        'md5sha1sum',
        #'memcached',
        'midnight-commander',
        'nmap',
        'readline',
        'redis',
        'rename',
        'renameutils',
        'sqlite',
        'ssh-copy-id',
        'trash',
        'tree',
        'unrar',
        'wget'
      ]
    }
  }

  package { $env['packages']['brew']:
    provider => 'homebrew'
  }
}
