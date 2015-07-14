class people::agilecreativity::params {
  # $::luser and $::boxen_srcdir come from Boxen's custom facts
  # $my_username  = $::luser
  # $my_homedir   = "/Users/${::luser}"
  # $my_sourcedir = $::boxen_srcdir

  $home = "/Users/${::boxen_user}"
  $apps = "${home}/apps"
}
