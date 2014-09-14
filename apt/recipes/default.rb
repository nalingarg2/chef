#
# Cookbook Name:: backend-setup
# Recipe:: default
#
# Contact:: nhorelik@rapidsos.com
# Copyright 2014, RapiSOS
#
# All rights reserved - Do Not Redistribute
#


#update before major install
execute "apt-get update"do	
	command "apt-get update"
end

#install python-pip
execute "apt-get -y install python-pip"do	
	command "apt-get -y install python-pip"
end

#install python-dev
execute "apt-get -y install python-dev"do	
	command "apt-get -y install python-dev"
end

#install nginx
execute "apt-get -y install nginx"do	
	command "apt-get -y install nginx"
end

#install gunicorn
execute "apt-get -y install gunicorn"do	
	command "apt-get -y install gunicorn"
end

#install libpq-dev
execute "apt-get -y install libpq-dev"do	
	command "apt-get -y install libpq-dev"
end

#install postgresql
execute "apt-get -y install postgresql"do	
	command "apt-get -y install postgresql"
end

#install postgresql-contrib
execute "apt-get -y install postgresql-contrib"do	
	command "apt-get -y install postgresql-contrib"
end

#install python-psycopg2
execute "apt-get -y install python-psycopg2"do	
	command "apt-get -y install python-psycopg2"
end



