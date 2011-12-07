# $top::var = 'variable set outside the class'
# $overridden::var = 'variable set outside the class to be hopefully overridden within the class'
#
#class configurer { 
#  include configurer::examplepluginclass
#
#  configurer::exampleplugin {
#    'config-tests':
#  }
#
#  configurer::exampleplugin {
#    'another-config-test':
#  }
#}
class configurer {

  configurer::job {
    'Facter (master)':
      description => 'This is a Factor job',

      configurer::plugin::git::job {
        'name':
          repo => 'git@github.com:justinstoller/facter.git',
          branch => 'master',
      }
  }
}
