template "#{node["kafka"]["home"]}/create-kafka-topic.sh" do
	source "create-kafka-topic.erb"
	owner "root"
	group "root"
	mode "0755"
	action :create
end

script "create-kafka-topic" do
	interpreter "bash"
	cwd "#{node["kafka"]["home"]}"
	code "./create-kafka-topic.sh"
end

file "#{node["kafka"]["home"]}/create-kafka-topic.sh" do
	only_if {
		File.exist?("#{node["kafka"]["home"]}/create-kafka-topic.sh")
	}
	action :delete
end
