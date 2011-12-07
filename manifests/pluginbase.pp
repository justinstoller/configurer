
class configurer::pluginbase {
  $installedplugins = [ 'base' ]

  file {
    '/root/config_test':
      content => template('configurer/config_test_one'),
  }
}

