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
