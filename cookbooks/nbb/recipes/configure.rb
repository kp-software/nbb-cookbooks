# frozen_string_literal: true
#
# Cookbook Name:: nbb
# Recipe:: configure
#

include_recipe 'opsworks_ruby::configure'

logrotate_app 'nbb' do
  path      '/srv/www/nbb/shared/log/*.log'
  frequency 'daily'
  rotate    3
end

include_recipe 'logrotate::global'
include_recipe 'cloudwatch-logs::default'

