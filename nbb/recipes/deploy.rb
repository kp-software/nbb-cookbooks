# frozen_string_literal: true
#
# Cookbook Name:: nbb
# Recipe:: deploy
#

# fix for breaking restart bug in newer versions of Monit
# https://bugs.launchpad.net/ubuntu/+source/monit/+bug/1786910
# https://github.com/ajgon/opsworks_ruby/issues/186
package 'Install Monit 1:5.16-2' do
  package_name 'monit'
  version '1:5.16-2'
  options '--allow-downgrades'
end

include_recipe 'opsworks_ruby::deploy'