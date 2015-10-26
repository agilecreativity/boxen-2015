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
        'aspell',
        'awscli',
        'boot-clj',
        'chruby',
        'clojure',
        'clojurescript',
        'colordiff',
        'coreutils',
        'ctags-exuberant',
        'dos2unix',
        'gist',
        'git-extras',
        'git-flow',
        'git-tig',
        'gradle221',
        'htop',
        'htop-osx',
        'hugo',
        'leiningen',
        'maven',
        'md5sha1sum',
        'midnight-commander',
        'nmap',
        'pt', # the platinum searcher
        'readline',
        'redis',
        'rename',
        'renameutils',
        'rlwrap', # for Clojure development
        'sqlite',
        'ssh-copy-id',
        'trash',
        'tree',
        'unrar',
        'wget',
        'wine',
        'winetricks',
        'xctool'
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
