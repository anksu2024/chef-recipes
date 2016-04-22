#
# Cookbook Name:: fileremove
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

# Conditional remove of a file using chef by executing linux command

# Providing the linux remove command after execute resource
execute "rm /root/dummy_file.txt" do
	# Do this only when some condition (here, Some file exits) is true
	only_if do
		File.exist?("/root/dummy_file.txt")
	end
end
