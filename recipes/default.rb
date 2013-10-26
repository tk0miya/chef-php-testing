#
# Cookbook Name:: php-testing
# Recipe:: default
#
# Copyright 2012, Takeshi KOMIYA
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

include_recipe "yum::epel"
include_recipe "php"

if node['platform_version'] =~ /^6/
  package "php-mbstring"
  package "php-xml"
else
  package "php53-mbstring"
  package "php53-xml"
end
package "ImageMagick"
package "ImageMagick-devel"

# xdebug
php_pear "xdebug" do
  action :install
end

cookbook_file "/etc/php.d/xdebug.ini" do
  source "xdebug.ini"
  mode 0644
  owner "root"
  group "root"
end
