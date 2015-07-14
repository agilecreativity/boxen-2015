class people::agilecreativity {
  include people::agilecreativity::params
  class { 'people::agilecreativity::homebrew': }
  # class { 'people::agilecreativity::brewcask': }
  # class { 'people::agilecreativity::jvm': }
  # class { 'people::agilecreativity::android': }
  # class { 'people::agilecreativity::dotfiles': }
  # class { 'people::agilecreativity::files': }
  # class { 'people::agilecreativity::osx': }
  # class { 'people::agilecreativity::apps': }
  #include 'inconsolata'
  #include 'pdftk'
}
