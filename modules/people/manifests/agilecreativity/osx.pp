class people::agilecreativity::osx {
  boxen::osx_defaults { 'Expand save panel by default':
    domain => 'NSGlobalDomain',
    key    => 'NSNavPanelExpandedStateForSaveMode',
    value  => true,
  }

  boxen::osx_defaults { 'Expand save panel by default 2':
    domain => 'NSGlobalDomain',
    key    => 'NSNavPanelExpandedStateForSaveMode2',
    value  => true,
  }

  boxen::osx_defaults { 'Expand print panel by default':
    domain => 'NSGlobalDomain',
    key    => 'PMPrintingExpandedStateForPrint',
    value  => true,
  }

  boxen::osx_defaults { 'Expand print panel by default 2':
    domain => 'NSGlobalDomain',
    key    => 'PMPrintingExpandedStateForPrint2',
    value  => true,
  }

  boxen::osx_defaults { 'Save to disk (not to iCloud) by default':
    domain => 'NSGlobalDomain',
    key    => 'NSDocumentSaveNewDocumentsToCloud',
    value  => true,
  }

  boxen::osx_defaults { 'Automatically quit printer app':
    domain => 'com.apple.print.PrintingPrefs',
    key    => 'Quit When Finished',
    value  => true,
  }

  boxen::osx_defaults { 'Disable the “Are you sure you want to open this application?” dialog':
    domain => 'com.apple.LaunchServices',
    key    => 'LSQuarantine',
    value  => false,
  }

  boxen::osx_defaults { 'Disable Resume system-wide':
    domain => 'NSGlobalDomain',
    key    => 'NSQuitAlwaysKeepsWindows',
    value  => false,
  }

  boxen::osx_defaults { 'Reveal IP address, hostname, OS version, etc. when clicking the clock':
    domain => '/Library/Preferences/com.apple.loginwindow',
    key    => 'AdminHostInfo',
    value  => 'HostName',
  }

  boxen::osx_defaults { 'Disable smart quotes':
    domain => 'NSGlobalDomain',
    key    => 'NSAutomaticQuoteSubstitutionEnabled',
    value  => false,
  }
}
