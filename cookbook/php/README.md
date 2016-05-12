php Cookbook
============
This cookbook installs and updates the php.ini file on the client nodes.

Files
-----
This cookbook comes with a file `php.ini` in the `files/default` directory of the php cookbook.
During convergence at the client node, the above mentioned file updates the already existing file `/etc/php.ini` with an extra comment `;; THIS FILE IS EDITED BY ANKIT`

Recipes
-------
The cookbook comprises of only 1 recipe file:

#### php::default
Upon convergence, this recipe performs 2 tasks:
- Installs php package on the client node.
- Updates the `/etc/php.ini` and changes its mode to `0644`

Usage
-----
To use this cookbook, include `php` in the client node's `run_list`:

```
$ knife node run_list add <FQDN_Unique_identifier_for_client_node> "recipe[php::default]"
```

Contributing
------------
This is a public cookbook and contributions will be appreciated.

License and Author
------------------
<b>Author:</b> Ankit Sarraf
