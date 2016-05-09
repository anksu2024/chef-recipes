tomcat Cookbook
===============
This cookbook automates the installation and statrt up of Tomcat services on Client Node

Attributes
----------
There are 4 attributes (attributes/default.rb) that are used in this cookbook:
<pre>
default["tomcat"]["download"]["source"] = "http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.0.M4/bin/apache-tomcat-9.0.0.M4.tar.gz"
default["tomcat"]["download"]["destination"] = "/opt/tomcat/tomcat.tar.gz"
default["tomcat"]["home"]["directory"] = "/opt/tomcat"
default["tomcat"]["version"] = "apache-tomcat-9.0.0.M4"
</pre>

All the above attributes can be modified to suit the requirement. The description of the attributes is as follows:<br />
- <b>default["tomcat"]["download"]["source"]:</b> Specifies the online resource location for downloading Tomcat tar file</b>
- <b>default["tomcat"]["download"]["destination"]:</b> The download location (destination) for the tar file for tomcat.
- <b>default["tomcat"]["home"]["directory"]:</b> Path where the Tomcat tar file is to be extracted.
- <b>default["tomcat"]["version"]:</b> Version of the Tomcat which is being installed on the client node.

Template
--------
<b>catalina_home.erb:</b> The template to create the file: /etc/profile.d/catalina.sh so that the CATALINA_HOME can be set on the client node.
<b>Tip:</b> If required the version of the Tomcat can be changed by changing the values of the following attributes:
- default["tomcat"]["download"]["source"]
- default["tomcat"]["version"]

Recipes
-------
#### tomcat::default
To include this cookbook in the run_list of the nodes, use the following command:
<pre>
knife node run_list add <i>FQDN_Unique_Identity_of_Node</i> "recipe[tomcat]"
</pre>

This recipe internally calls the sub-recipes to download and install tomcat and set the path of the CATALINA_HOME.
Also, there is a recipe to automatically start tomcat services on the client node.

License and Author
------------------
<b>Author:</b> Ankit Sarraf
