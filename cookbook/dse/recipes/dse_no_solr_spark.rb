cookbook_file "/etc/default/dse" do
	source "dse_no_spark_solr"
	owner "cassandra"
	group "cassandra"
	mode "0755"
	action :create
end
