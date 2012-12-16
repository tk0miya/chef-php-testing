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

include_recipe "php"

package "php-mbstring"
package "php-xml"
package "php-pecl-xdebug"
package "ImageMagick"
package "ImageMagick-devel"

# phing
php_pear_channel "pear.phing.info" do
  action :discover
end

php_pear "phing" do
  action :install
  channel "phing"
end

# PHP_Depend
php_pear_channel "pear.pdepend.org" do
  action :discover
end

php_pear "PHP_Depend" do
  action :install
  channel "pdepend"
end

# PHP_PMD
php_pear_channel "pear.phpmd.org" do
  action :discover
end

php_pear "PHP_PMD" do
  action :install
  channel "phpmd"
end

# PHPUnit
php_pear_channel "pear.phpunit.de" do
  action :discover
end

php_pear_channel "components.ez.no" do
  action :discover
end

php_pear_channel "pear.symfony.com" do
  action :discover
end

php_pear "PHPUnit" do
  action :install
  channel "phpunit"
  options "--alldeps"
end

# phpcpd
php_pear_channel "pear.netpirates.net" do
  action :discover
end

php_pear "phpcpd" do
  action :install
  channel "phpunit"
end
