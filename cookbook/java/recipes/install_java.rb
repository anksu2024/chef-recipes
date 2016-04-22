# Upgrade action for the java rpm package
rpm_package_path = "root/#{node["java"]["package"]["rpm"]}"
rpm_package rpm_package_path do
	only_if do
		File.exist?(rpm_package_path)
	end
	action :upgrade
end
