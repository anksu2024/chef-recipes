# Chef recipe to download tomcat
remote_file "#{node["tomcat"]["download"]["destination"]}" do
	source "#{node["tomcat"]["download"]["source"]}"
	owner "root"
	group "root"
	mode "0755"
	action :create
end
