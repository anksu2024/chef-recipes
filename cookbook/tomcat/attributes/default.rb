# Copyright 2016 Ankit Sarraf
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

default["tomcat"]["download"]["source"] = "http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.0.M4/bin/apache-tomcat-9.0.0.M4.tar.gz"
default["tomcat"]["download"]["destination"] = "/opt/tomcat/tomcat.tar.gz"
default["tomcat"]["home"]["directory"] = "/opt/tomcat"
