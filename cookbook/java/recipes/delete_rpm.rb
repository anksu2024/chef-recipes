# Delete the RPM install file once java has been installed
rpm_package_path = "root/#{node["java"]["package"]["rpm"]}"
file rpm_package_path do
	only_if do
		File.exist?(rpm_package_path)
	end
	action :delete
end
