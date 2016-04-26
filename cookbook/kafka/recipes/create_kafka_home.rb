directory "#{node["kafka"]["path"]}" do
	not_if {
		Dir.exist?("#{node["kafka"]["path"]}")
	}
	owner "root"
	group "root"
	mode "0755"
	action :create
end
