execute "start-zookeeper" do
	cwd "#{node["kafka"]["home"]}"
	command "bin/zookeeper-server-start.sh config/zookeeper.properties &"
end
