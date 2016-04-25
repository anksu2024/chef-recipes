# Chef Recipe to automate cassandra.yaml configuration
template node["datastax"]["cassandra"]["yaml"]["path"] do
	source "cassandra.yaml.erb"
	owner "cassandra"
	group "cassandra"
	mode "0755"
	action :create
end
