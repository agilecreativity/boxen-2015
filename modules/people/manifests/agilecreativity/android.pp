class people::agilecreativity::android {
  # Note: this depends on 'java' installation
  include android::sdk
  include android::tools
  include android::platform_tools
  include android::doc
  include android::studio

  android::version { '22':
    options => ['platform', 'add_on', 'system_image', 'sample']
  }
  android::version { '21':
    options => ['platform', 'add_on', 'system_image', 'sample']
  }
  android::version { '20':
    options => ['platform', 'add_on', 'system_image', 'sample']
  }
  android::version { '19':
    options => ['platform', 'add_on', 'system_image', 'sample']
  }
  android::version { '18':
    options => ['platform', 'add_on', 'system_image', 'sample']
  }

  include android::ndk
}
