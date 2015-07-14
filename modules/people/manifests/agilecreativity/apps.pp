class people::agilecreativity::apps {
  # include chrome
  # include chrome::dev
  # include chrome::canary
  # include chrome::chromium
  # include flowdock
  # include calibre
  # include firefox
  # include firefox::nightly
  # include thunderbird
  include tmux
  # include imagemagick
  # include gimp
  # include appcleaner
  # include vlc
  # include adobe_reader
  # include mplayerx
  # include ccleaner
  # include ctags

  include macvim
  ## ensure that +lua is enabled
  class macvim {
    case $::osfamily {
      'Darwin': {
        package { 'macvim':
          ensure          => installed,
          install_options => [
            '--with-cscope',
            '--with-lua',
            '--override-system-vim',
          ];
        }
      }
      default: {}
    }
  }

  # include qtcreator
  # include phantomjs
  # class { 'vagrant': }
  # include packer
  # include handbrake
  # class { 'webstorm': version => '9.0.3' }
  # include qt
  # class { "libreoffice": version => '4.4.1' }
  # include wkhtmltopdf
  # postgresql::db { 'spike_db': }

  #include tor
  # TODO: comment out for now as it does the download everytime event after successful installation
  # class {
  #   "eclipse::jee": version => 'SR2'
  # }

  ## Install custom vagrant plugins
  ## vagrant::plugin { 'vagrant-cachier' }

  # include virtualbox
}
