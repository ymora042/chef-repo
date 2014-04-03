#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2014, ultimate_software
#
# All rights reserved - Do Not Redistribute
#

hook = data_bag_item('hooks', 'request_bin')
http_request 'callback' do
	url hook['url']
end
