include brewcask
class people::agilecreativity::brewcask {
  $env = {
    packages => {
      brew   => [
        # '4k-youtube-to-mp3',
        # '4k-video-downloader',
        'grandperspective',
        'vlc',
        'vlcstreamer'
        #'ffmpegx'
        ## Note: this will install version 3.0.x, need to comment out for older version of mongo
        # 'mongodb',
        # 'robomongo'
      ]
    }
  }

  package { $env['packages']['brew']:
    provider => 'brewcask'
  }
}
