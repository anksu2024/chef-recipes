execute "#{node["kafka"]["path"]}/#{node["kafka"]["version"]}.tgz" do
	command "tar xvfz #{node["kafka"]["version"]}.tgz"
	cwd "#{node["kafka"]["path"]}"
	not_if {
		Dir.exist?("#{node["kafka"]["path"]}/#{node["kafka"]["version"]}")
	}
end
