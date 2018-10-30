mssql-tools cookbook
=====================

This cookbook install mssql-tools.

#### [mssql-tools](http://https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-tools?view=sql-server-2017#next-steps/)

The following cookbook install the command-line tools, Microsoft ODBC drivers, and their dependencies. The mssql-tools package contains:.

Requirements
------------
#### Cookbooks:


The following platforms and versions are tested and supported using Opscode's test-kitchen.

- CentOS 7.x

The following platform families are supported in the code, and are assumed to work based on the successful testing on CentOS.

- Red Hat (rhel)
- Fedora
- Amazon Linux

Recipes
-------
#### mssql:default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>node['mssql-tools']['repo']['name']</tt></td>
    <td>String</td>
    <td>Name of yum repo</td>
    <td><tt>packages-microsoft-com-prod</tt></td>
  </tr>
  <tr>
    <td><tt>node['mssql-tools']['repo']['name']</tt></td>
    <td>String</td>
    <td>Description of yum repo</td>
    <td><tt>Microsoft yum repository</tt></td>
  </tr>
  <tr>
    <td><tt>node['mssql-tools']['repo']['baseurl']</tt></td>
    <td>String</td>
    <td>baseurl of yum repo</td>
    <td><tt>https://packages.microsoft.com/rhel/7/prod/</tt></td>
  </tr>
  <tr>
    <td><tt>node['mssql-tools']['repo']['gpgkey']</tt></td>
    <td>String</td>
    <td>gpgkey of yum repo</td>
    <td><tt>https://packages.microsoft.com/keys/microsoft.asc</tt></td>
  </tr>
  <tr>
    <td><tt>node['mssql-tools']['accept_eula']</tt></td>
    <td>Boolean</td>
    <td>Autoaccept EULA</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>node['mssql-tools']['package']</tt></td>
    <td>array</td>
    <td>packages of mssql-tools to install</td>
    <td><tt>%w(mssql-tools unixODBC-devel)</tt></td>
  </tr>
</table>


Include `mssql-tools` in your node's `run_list`:


Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:
Lucas Mariani (Psyreactor)
- [marianiluca@gmail.com](mailto:marianiluca@gmail.com)
- [https://github.com/psyreactor](https://github.com/psyreactor)
