name             "php-testing"
maintainer       "Takeshi KOMIYA"
maintainer_email "i.tkomiya@gmail.com"
license          "Apache 2.0"
description      "Installs packages for testing PHP code"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{ fedora redhat centos amazon }.each do |os|
  supports os
end

depends 'yum'
depends 'php'
