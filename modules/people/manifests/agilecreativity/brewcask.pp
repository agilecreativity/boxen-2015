include brewcask
class people::agilecreativity::brewcask {
  $env = {
    packages => {
      brew   => [
        'java',
        'android-studio',
        'android-tools',
        'android-platform-tools',
        'android-file-transfer',
        'calibre',
        'chromium',
        'grandperspective',
        'kindle',
        'vlc',
        'vlcstreamer',
        'ffmpegx',
        'genymotion',
        'mongodb',
        'robomongo'
      ]
    }
  }

  package { $env['packages']['brew']:
    provider => 'brewcask'
  }
}
