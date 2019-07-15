# frozen_string_literal: true
#
# Cookbook Name:: nbb
# Recipe:: swap
#

# Create swap
swap_file '/mnt/swap' do
  size    node['swap']['size'] # MBs
  persist true
end
