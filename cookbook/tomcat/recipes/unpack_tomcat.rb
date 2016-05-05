bash "unpack_tomcat_tar" do
	cwd "#{node["tomcat"]["home"]["directory"]}"
	code <<-EOS
	tar xzf #{node["tomcat"]["download"]["destination"]}
	EOS
end
