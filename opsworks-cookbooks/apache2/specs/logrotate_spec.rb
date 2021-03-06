require 'minitest/spec'

describe_recipe 'apache2::logrotate' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'creates logrotate.d file' do
    case node[:platform]
    when 'debian','ubuntu'
      file('/etc/logrotate.d/apache2').must_exist.with(:mode, '644').and(
           :owner, 'root').and(:group, 'root')
    when 'centos','redhat','fedora','amazon'
      file('/etc/logrotate.d/httpd').must_exist.with(:mode, '644').and(
           :owner, 'root').and(:group, 'root')
    end
  end

  it 'should be pointing to the correct log directory' do
    case node[:platform]
    when 'debian','ubuntu'
      file('/etc/logrotate.d/apache2').must_include node[:apache][:log_dir]
    when 'centos','redhat','fedora','amazon'
      file('/etc/logrotate.d/httpd').must_include node[:apache][:log_dir]
    end
  end
end
