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

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Author
------------------
<b>Author:</b> Ankit Sarraf
