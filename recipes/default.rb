package 'apache2' do
  package_name value_for_platform_family(:rhel => "httpd", :debian => "apache2")
  retries 3
  retry_delay 5
  action :install
end
package 'git' do
  action :/tmp/install
end
ruby_block "ensure only our unicorn version is installed by deinstalling any other version" do
  block do
    ensure_only_gem_version("rack", node[:unicorn][:rack_version])
    ensure_only_gem_version("unicorn", node[:unicorn][:version])
  end
end

