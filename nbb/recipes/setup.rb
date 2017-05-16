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

include_recipe 'opsworks_ruby::setup'
