include_recipe 'apt'

# use `apt.postgresql.org` for primary package installation support
apt_repository "apt.postgresql.org" do
  uri "http://apt.postgresql.org/pub/repos/apt"
  distribution "#{node["lsb"]["codename"]}-pgdg"
  components ["main"]
  key "http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc"
  action :add
end

# automatically get repository key updates
package 'pgdg-keyring'

#postgresql specifiq packages
package 'postgresql-9.2'
package 'postgresql-client-9.2'
package 'postgresql-common'

# define the service
service "postgresql" do
  supports :restart => true
  action [:enable, :start]
end
