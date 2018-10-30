#
# Cookbook:: mssql-tools
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
yum_repository node['mssql-tools']['repo']['name'] do
  description node['mssql-tools']['repo']['description']
  baseurl node['mssql-tools']['repo']['baseurl']
  gpgkey node['mssql-tools']['repo']['gpgkey']
  action :create
end

ENV['ACCEPT_EULA'] = 'Y' if node['mssql-tools']['accept_eula']
package node['mssql-tools']['pakages']

%w(bcp sqlcmd).each do |bin|
  link "/usr/bin/#{bin}" do
    to "/opt/mssql-tools/bin/#{bin}"
  end
end
