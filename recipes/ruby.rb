node['rbenv']['rubies'] = [ node['rails_env']['ruby']['version'] ]

include_recipe 'ruby_build'
include_recipe 'rbenv::system'
include_recipe 'rbenv::vagrant'

rbenv_global node['rails_env']['ruby']['version']
rbenv_gem 'bundler'
rbenv_gem 'passenger' do
  version '4.0.0.rc6'
end
