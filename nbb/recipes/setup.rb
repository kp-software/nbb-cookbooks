# frozen_string_literal: true
#
# Cookbook Name:: nbb
# Recipe:: setup
#

prepare_recipe

include_recipe 'nbb::swap'

# packages
package 'htop'
package 'tmux'
package 'imagemagick'
package 'ruby-dev'

include_recipe 'opsworks_ruby::setup'
