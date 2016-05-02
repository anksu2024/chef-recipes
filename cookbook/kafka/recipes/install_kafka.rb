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

execute "#{node["kafka"]["path"]}/#{node["kafka"]["version"]}.tgz" do
	command "tar xvfz #{node["kafka"]["version"]}.tgz"
	cwd "#{node["kafka"]["path"]}"
	not_if {
		Dir.exist?("#{node["kafka"]["path"]}/#{node["kafka"]["version"]}")
	}
end
