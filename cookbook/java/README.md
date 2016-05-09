java Cookbook
=============
This cookbook installs the latest version of JDK on the client nodes. This cookbook installs JDK1.8u91 on all the client nodes.
Additionally, it also removes already existing JDK versions (including OpenJDK)

Requirements
------------
Before uploading the cookbook, add the latest JDK RPM "jdk-8u91-linux-x64.rpm" in the files/default directory of the cookbook

Usage
-----

#### Node Bootstrap
Before creating run_list make sure the client nodes are bootstrapped from the chef-master
<pre>
knife bootstrap 'public_hostname_childnode' -x 'node_uname_root' -P 'password' -N 'FQDN_Unique_Identity'
</pre>

#### Adding cookbook to Run List
To include this cookbook in the run_list of the Client Node:
<pre>
$ knife node run_list add 'FQDN_Unique_Identiy' "recipe[java::default]"
</pre>

#### Convergence at Client:
For the convergence at client, issue the following command in the client node:
<pre>$ chef-client</pre>

License and Author
------------------
<b>Author:</b> Ankit Sarraf
