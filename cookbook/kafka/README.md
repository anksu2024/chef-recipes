kafka Cookbook
==============
This cookbook automates the installation of Kafka on client node

Attributes
----------
There are 3 attributes (attributes/default.rb) that are used in this cookbook:
<pre>
default["kafka"]["version"] = "kafka_2.10-0.9.0.1"
default["kafka"]["path"] = "/usr/kafka"
default["kafka"]["home"] = "/usr/kafka/latest"
</pre>
All the above attributes can be modified to suit the requirement. The description of the attributes is as follows:<br />
- default["kafka"]["version"]: Specifies the version of Kafka that is to be installed on the client nodes. Here the version. Here it is kafka_2.10-0.9.0.1
- default["kafka"]["path"]: Location where the Kafka Package is to be extracted on the client node.
- default["kafka"]["home"]: Path of KAFKA_HOME enviroment variable.

Files
-----
kafka_2.10-0.9.0.1.tgz file for installing Kafka on the client node has also been provided in the files/default location in the cookbook. This file will be copied in the location indicated by the attribute, default["kafka"]["path"]. <br/>
Tip: When there is a need to change the version of Kafka, just replace this file with the new one and make sure respective changes are made in the value of attribute default["kafka"]["version"]

Usage
-----
#### kafka::default
To include this cookbook in the run_list of the nodes, use the following command:
<pre>
knife node run_list add <FQDN_Unique_Identity_of_Node> "recipe[kafka]"
</pre>

License and Authors
-------------------
<b>Authors:</b> Ankit Sarraf<br/>
<b>Organization:</b> Cloudwick
