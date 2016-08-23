package 'apache2' do
  package_name value_for_platform_family(:rhel => "httpd", :debian => "apache2")
  retries 3
  retry_delay 5
  action :install
end
package 'git' do
  action :/tmp/install
end

