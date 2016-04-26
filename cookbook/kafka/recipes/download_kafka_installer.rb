cookbook_file "#{node["kafka"]["path"]}/#{node["kafka"]["version"]}.tgz" do
	source "#{node["kafka"]["version"]}.tgz"
	owner "root"
	group "root"
	mode "0644"
	action :create_if_missing
end
