#
# Cookbook Name:: greeting
# Recipe:: default
#
# Copyright 2014, ultimate_software
#
# All rights reserved - Do Not Redistribute
#1	q2w1


template "/home/greeting.txt" do
	source 'greeting.txt.erb'
	variables({
		:name => node[:greeting][:full_name],
		:fqdn => node[:fqdn]
		})
end