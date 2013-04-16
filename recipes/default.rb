#
# Cookbook Name:: rails_env
# Recipe:: default
#
# Copyright 2013, CloverInteractive
#
#

app_dir = node['rails_env']['app_dir'] || '/home/w'

include_recipe 'rails_env::setup'
include_recipe 'rails_env::ruby'
include_recipe 'rails_env::postgresql'
