#
# Cookbook Name:: apt
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

{node['python']['binary']} distribute_setup.py
{::File.dirname(pip_binary)}/easy_install pip

execute "apt-get update"do	
	command "apt-get update"

end

directory "/home/ubuntu/git" do
	mode 0755
	owner "ubuntu" 
	group "ubuntu" 
	action :create
end

directory "#{ENV['HOME']}/nali " do
	action :create
end

