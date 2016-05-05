directory "#{node["tomcat"]["home"]["directory"]}" do
	owner "root"
	group "root"
	action :create
	not_if {
		Dir.exist?("#{node["tomcat"]["home"]["directory"]}")
	}
end
