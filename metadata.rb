name             'rails_env'
maintainer       'cloverinteractive'
maintainer_email 'enrique@cloverinteractive.com'
license          'All rights reserved'
description      'Installs/Configures rails environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt',                '1.7.0'
depends 'ruby_build'
depends 'rbenv'
depends 'build-essential'
