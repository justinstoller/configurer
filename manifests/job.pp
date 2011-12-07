define configurer::job ($description) {
  
  $array_for_job = [ 
                      { project => [
                        { name => $title },
                        { description => $description }
                      ]}
                    ]
  file {
    '/root/jenkins.xml':
      content => template('configurer/xml_builder'),
      ensure => present,
  }
}
