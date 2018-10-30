default['mssql-tools']['repo']['name'] = 'packages-microsoft-com-prod'
default['mssql-tools']['repo']['description'] = 'Microsoft yum repository'
default['mssql-tools']['repo']['baseurl'] = 'https://packages.microsoft.com/rhel/7/prod/'
default['mssql-tools']['repo']['gpgkey'] = 'https://packages.microsoft.com/keys/microsoft.asc'

default['mssql-tools']['accept_eula'] = true
default['mssql-tools']['pakages'] = %w(mssql-tools unixODBC-devel)
