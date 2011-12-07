class configurer::examplepluginclass {
  define configurer::exampleplugin {
    include configurer::pluginbase
    $configurer::pluginbase::installedplugins += $name
  } 
}
