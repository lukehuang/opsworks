#
# Cookbook Name:: varnish
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "install" do
	command "apt-get install apt-transport-https"
        command "curl https://repo.varnish-cache.org/GPG-key.txt | apt-key add -echo 'deb https://repo.varnish-cache.org/debian/ jessie varnish-4.1'\
    >> /etc/apt/sources.list.d/varnish-cache.list"
	command "apt-get update"
	command "apt-get install varnish"
end
