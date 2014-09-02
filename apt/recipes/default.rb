#
# Cookbook Name:: apt
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "apt-get update"do	
	command "apt-get update"

end

directory "/git" do
	mode 0755
	owner "ubuntu" 
	group "ubuntu" 
	action :create
end
