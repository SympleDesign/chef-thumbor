name 'thumbor'
maintainer 'Zanui'
maintainer_email 'engineering@zanui.com.au'
license 'Apache 2.0'
description 'Installs and configures thumbor'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.4.1'

recipe 'thumbor::default', 'Installs thumbor from globocom Private Package Archive (PPA)'
recipe 'thumbor::source', 'Installs thumbor from GitHub repository'
recipe 'thumbor::experimental', 'experimental thumbor installs'

depends 'apt'
depends 'python'
depends 'nginx'
depends 'redis'
depends 'build-essential'

supports 'ubuntu'

attribute 'thumbor/processes',
  :display_name => 'Number of processes',
  :description => 'Number of thumbor processes running in parallel',
  :default => '4'

attribute 'thumbor/base_port',
  :display_name => 'Number of processes',
  :description => 'Number of thumbor processes running in parallel',
  :default => '9000'
