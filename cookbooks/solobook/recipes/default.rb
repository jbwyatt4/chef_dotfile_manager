#
# Cookbook:: solobook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Set hostfiles
directory wuser_dir('.chef')

template wuser_dir('.chef/hosts.bk.allow') do
  source 'hostfile.erb'
  variables(
    hostfile_var: 1
  )
end
template wuser_dir('.chef/hosts.bk.block') do
  source 'hostfile.erb'
  variables(
    hostfile_var: 2
  )
end
template wuser_dir('.chef/hosts.bk.totalblock') do
  source 'hostfile.erb'
  variables(
    hostfile_var: 3
  )
end

# Set .bash_profile to have RVM + to link with your dot file
template wuser_dir('.bash_profile') do
  source '.bash_profile.erb'
end

# Set your custom dot file
template wuser_dir('.user_custom') do
  source '.user_custom.erb'
end

# Set code directory
directory wuser_dir('code')

# Atom
# depends on ~/code being set
include_recipe 'solobook::atom'
