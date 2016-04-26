# Remove existing soft link
link "#{node["kafka"]["home"]}" do
	action :delete
	only_if "test -L #{node["kafka"]["home"]}"
end

# Create new softlink
link "#{node["kafka"]["home"]}" do
	to "#{node["kafka"]["path"]}/#{node["kafka"]["version"]}"
end

# Set Path and KafkaHome
template "/etc/profile.d/kafka.sh" do
	source "set_kafka_home.erb"
	owner "root"
	group "root"
	mode "0644"
	action :create_if_missing
end
