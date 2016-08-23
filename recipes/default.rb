package 'a better top' do
  package_name value_for_platform_family(:rhel => "htop", :debian => "atop")
  retries 3
  retry_delay 5
  action :install
end

package 'atop' do
  action :install
end

package 'htop'
