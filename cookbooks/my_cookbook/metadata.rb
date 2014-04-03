name             'my_cookbook'
maintainer       'ultimate_software'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures my_cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

depends            'build-essential'

depends     	   'chef-client'
depends 		   'apt'
depends 		   'ntp'
