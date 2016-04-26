file "#{node["kafka"]["path"]}/#{node["kafka"]["version"]}.tgz" do
	only_if {
		File.exist?("#{node["kafka"]["path"]}/#{node["kafka"]["version"]}.tgz")
	}
	action :delete
end
