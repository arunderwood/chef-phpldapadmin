#
# Cookbook Name:: phpldapadmin
# Recipe:: default
#
# Copyright 2013, computerlyrik
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "apache2"
include_recipe "openldap::server"

package "phpldapadmin"

##TODO search for ldap server and set according ip address in config
template "/etc/phpldapadmin/config.php" do
  owner "root"
  group "www-data"
  mode 0640
end

link "/etc/apache2/conf.d/phpldapadmin.conf" do
  to "/etc/phpldapadmin/apache.conf"
end
