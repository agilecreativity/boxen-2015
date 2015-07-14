class people::agilecreativity::dotfiles {
  $home = "/Users/${::boxen_user}"
  $apps = "${home}/apps"

  file { $apps:
    ensure  => directory
  }

  repository { "${apps}/private-dotfiles" :
    source  => 'agilecreativity/private-dotfiles',
    require => File[$apps]
  }
  -> exec { 'install private dotfiles':
    command     => 'rake',
    cwd         => "${apps}/private-dotfiles",
    refreshonly => true,
    environment => [ "HOME=${home}" ]
  }

  repository { "${apps}/dotfiles" :
    source  => 'agilecreativity/dotfiles',
    require => File[$apps]
  }
  -> exec { 'install dotfiles':
    command     => './install.sh',
    cwd         => "${apps}/dotfiles",
    refreshonly => true,
    environment => [ "HOME=${home}" ]
  }

  repository { "${apps}/tmux-starter" :
    source  => 'agilecreativity/tmux-starter',
    require => File[$apps]
  }

  repository { "${apps}/pro-scripts" :
    source  => 'agilecreativity/pro-scripts',
    require => File[$apps]
  }
}
