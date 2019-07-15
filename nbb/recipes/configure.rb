# frozen_string_literal: true
#
# Cookbook Name:: nbb
# Recipe:: configure
#

include_recipe 'opsworks_ruby::configure'
include_recipe 'cloudwatch-logs::default'
