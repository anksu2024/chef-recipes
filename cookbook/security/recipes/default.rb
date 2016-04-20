#
# Cookbook Name:: security
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Remove the file validation.pem for security reasons
file "/etc/chef/validation.pem" do
	action :delete
end
