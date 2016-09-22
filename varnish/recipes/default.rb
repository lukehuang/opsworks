#
# Cookbook Name:: varnish
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "install" do
 	command "apt-get install -y libpcre3-dev"
	command "add-apt-repository -y ppa:ubuntu-toolchain-r/test"
	command "apt-get update"
	command "apt-get install -y gcc-4.9 g++-4.9"
	command "update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.9"
	command "sudo apt-get install -y apt-transport-https"
        command "curl https://repo.varnish-cache.org/GPG-key.txt | apt-key add -echo 'deb https://repo.varnish-cache.org/debian/ jessie varnish-4.1'\
    >> /etc/apt/sources.list.d/varnish-cache.list"
	command "echo 'deb http://security.ubuntu.com/ubuntu wily-security main' >> /etc/apt/sources.list"
	command "apt-get update"
	command "apt-get install -y varnish"
end
