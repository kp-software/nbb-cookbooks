# frozen_string_literal: true
#
# Cookbook Name:: nbb
# Recipe:: setup
#

prepare_recipe

include_recipe 'nbb::swap'

# packages
include_recipe 'nodejs'
include_recipe 'yarn'
package 'htop'
package 'tmux'
package 'imagemagick'
package 'redis-server'
package 'redis-tools'

include_recipe 'opsworks_ruby::setup'
