fileremove Cookbook
===================
To automate the process of removing a File if it exists on the client node.

Usage
-----
#### fileremove::default

To use this recipe, just include `fileremove` in the client node's `run_list`:

```
{
  "name":"my_node",
  "run_list": [
    "recipe[fileremove]"
  ]
}
```

or issue the following command from the master node:
<pre>
$ knife node run_list add <FQDN_Unique_Identifier_of_Client_Node> "recipe[fileremove::default]"
</pre>

License and Author
------------------
<b>Author:</b> Ankit Sarraf
