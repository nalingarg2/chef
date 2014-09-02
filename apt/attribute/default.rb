default['python']['version'] = '2.7.1'

if python['install_method'] == 'package'
  default['python']['prefix_dir'] = '/usr'
else
  default['python']['prefix_dir'] = '/usr/local'
end

default['python']['url'] = 'http://www.python.org/ftp/python'
default['python']['checksum'] = '80e387...85fd61'


if platform_family?("rhel")
  pip_binary = "/usr/bin/pip"
else
  pip_binary = "/usr/local/bin/pip"
end

remote_file "#{Chef::Config[:file_cache_path]}/distribute_setup.py" do
  source "http://python-distribute.org/distribute_setup.py"
  mode "0644"
  not_if { ::File.exists?(pip_binary) }
end

execute "install-pip" do
  cwd Chef::Config[:file_cache_path]
  command <<-EOF
    # command for installing Python goes here
    EOF
  not_if { ::File.exists?(pip_binary) }
end
