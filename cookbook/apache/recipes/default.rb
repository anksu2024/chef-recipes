# Copyright 2016 Ankit Sarraf
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
