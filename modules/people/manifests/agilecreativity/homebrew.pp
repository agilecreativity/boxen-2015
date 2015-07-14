class people::agilecreativity::homebrew {
  ## build essentials
  include cmake
  include autoconf
  include sysctl
  include inconsolata

  $env = {
    packages => {
      brew   => [
        'ag',
        'asciinema',
        'awscli',
        'colordiff',
        'coreutils',
        'ctags-exuberant',
        'dos2unix',
        'gist',
        'git-extras',
        'git-flow',
        'git-tig',
        'htop',
        'htop-osx',
        'md5sha1sum',
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
        'wget',
        #'ant',
        #'boost',
        #'boost-build',
        #'boot2docker',
        #'docker',
        #'ghostscript',
        #'gradle221',
        #'groovy',
        #'maven',
        #'memcached',
      ]
    }
  }

  package { $env['packages']['brew']:
    provider => 'homebrew'
  }
}
