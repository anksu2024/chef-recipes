execute "start-kafka-server" do
	cwd "#{node["kafka"]["home"]}"
	command "bin/kafka-server-start.sh config/server.properties &"
end
