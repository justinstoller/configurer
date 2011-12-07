class configurer::parent::child inherits configurer::parent {
  $plugin += [ 'else' ]

  define thingy ($value = '', plugin = $plugin) {
    $configurer::parent::child::plugin += $value
    $plugins = $configurer::parent::child::plugin
    include configurer::notifier
  }
}
