rpm_package_path = "root/#{node["java"]["package"]["rpm"]}"
cookbook_file rpm_package_path do
	source node["java"]["package"]["rpm"]
	mode node["file"]["mode"]
end
