#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# Define a package resource
package "httpd" do
	# Install Apache package
	action	:install
end

# Define service resource to start the hhtpd service
service "httpd" do
	# Look at httpd and if it is enabled then start it, if it isn't started
        action [:enable, :start]
end

# Optional: Include default recipe from php cookbook
include_recipe "php::default"
