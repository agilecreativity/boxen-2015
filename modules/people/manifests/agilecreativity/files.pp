class people::agilecreativity::files {
  ## Links to some Dropbox folders
  file {"/Users/${::luser}/notes":
    ensure => link,
    target => "/Users/${::luser}/Dropbox/notes"
  }

  file {"/Users/${::luser}/codes/Mine":
    ensure => link,
    target => "/Users/${::luser}/Dropbox/src/Mine",
  }

  file {"/Users/${::luser}/codes/Others":
    ensure => link,
    target => "/Users/${::luser}/Dropbox/src/Others",
  }

  file {"/Users/${::luser}/codes/Work":
    ensure => link,
    target => "/Users/${::luser}/Dropbox/src/Work",
  }
}
