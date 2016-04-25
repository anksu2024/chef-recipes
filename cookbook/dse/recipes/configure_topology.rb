template "/etc/dse/cassandra/cassandra-topology.properties" do
	source "cassandra-topology.properties.erb"
	owner "cassandra"
	group "cassandra"
	mode "0755"
	action :create
end
