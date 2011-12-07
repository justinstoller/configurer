# Jenkins module for Puppet

class jenkins { 
  include jenkins::plugins
  include jenkins::config::local
  include jenkins::jobs::local

  jenkins::plugin{
    "chucknorris":
  }

  jenkins::plugin {
    "git":
  }

  jenkins::plugin {
    "github":
    require => Jenkins::Plugin["git"]
  }

}

jenkins::config {
  
  include jenkins::config
  include jenkins::config::defaults

  xsrf_protection => true,
  send_usage_upstream => true
  
}

class jenkins::jobs::local {
  include jenkins::jobs

  jenkins::job {
    "Factor (master)":
      description => "The Factor project's unit tests",
        
  } 
}

class jenkins::plugins {
  define jenkins::plugin ($name) {
  }

}

class jenkins::config {

}
