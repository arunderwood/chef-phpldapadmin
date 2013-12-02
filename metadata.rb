name             'phpldapadmin'
maintainer       'computerlyrik'
maintainer_email 'chef-cookbooks@computerlyrik.de'
license          'Apache 2.0'
description      'Installs/Configures phpldapadmin'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.1'

depends 'apache2'
depends 'openldap'
