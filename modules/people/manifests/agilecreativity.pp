class people::agilecreativity {
  include people::agilecreativity::params
  class { 'people::agilecreativity::homebrew': }
  class { 'people::agilecreativity::brewcask': }
  class { 'people::agilecreativity::osx': }
  class { 'people::agilecreativity::essentials': }
  class { 'people::agilecreativity::apps': }
  class { 'people::agilecreativity::jvm': }
  class { 'people::agilecreativity::android': }
  # class { 'people::agilecreativity::dotfiles': }
  # class { 'people::agilecreativity::files': }
  # include 'pdftk'
}
