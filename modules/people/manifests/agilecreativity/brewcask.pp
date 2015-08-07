include brewcask
class people::agilecreativity::brewcask {
  $env = {
    packages => {
      brew   => [
        'calibre',
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
