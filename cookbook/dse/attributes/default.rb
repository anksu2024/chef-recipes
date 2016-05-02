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

# Repository related attributes
default["datastax"]["enterprise"]["username"] = "user.name_12345"
default["datastax"]["enterprise"]["password"] = "pass.word_12345"
default["datastax"]["repo"]["path"] = "/etc/yum.repos.d/datastax.repo"
default["datastax"]["file"]["confidential"]["mode"] = "0400"

# Installation version attributes
default["datastax"]["latest"]["version"] = "4.8.5-1"

# Cassandra yaml attributes
default["datastax"]["cassandra"]["yaml"]["cluster_name"] = 'Stax_Cluster'
default["datastax"]["cassandra"]["yaml"]["seed_providers"] = "10.1.1.1"
default["datastax"]["cassandra"]["yaml"]["endpoint_snitch"] = "PropertyFileSnitch"
default["datastax"]["cassandra"]["yaml"]["path"] = "/etc/dse/cassandra/cassandra.yaml"
default["datastax"]["cassandra"]["yaml"]["data"]["file"]["directory"] = "/var/lib/cassandra/data"
default["datastax"]["cassandra"]["yaml"]["commitlog"]["directory"] = "/var/lib/cassandra/commitlog"
default["datastax"]["cassandra"]["yaml"]["saved_caches"]["directory"] = "/var/lib/cassandra/saved_caches"

# Metadata listed about the nodes in cluster
default["datastax"]["cassandra"]["nodes"]["node1"]["ip_addr"] = "10.1.1.1"
default["datastax"]["cassandra"]["nodes"]["node1"]["dc_rac"] = "DC_1:RAC_1"
default["datastax"]["cassandra"]["nodes"]["node2"]["ip_addr"] = "10.1.1.2"
default["datastax"]["cassandra"]["nodes"]["node2"]["dc_rac"] = "DC_1:RAC_2"
default["datastax"]["cassandra"]["nodes"]["node3"]["ip_addr"] = "10.2.1.1"
default["datastax"]["cassandra"]["nodes"]["node3"]["dc_rac"] = "DC_2:RAC_1"
