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
        'ant',
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
        'gradle221',
        'hg',
        'htop',
        'htop-osx',
        'hugo',
        'maven',
        'md5sha1sum',
        'midnight-commander',
        'nmap',
        'pt', # the platinum searcher
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
        #'ghostscript' #=> TODO: please install this manually!
        #'boost',
        #'boost-build',
        #'boot2docker',
        #'docker',
        #'groovy',
        #'memcached',
      ]
    }
  }

  package { $env['packages']['brew']:
    provider => 'homebrew'
  }
}
