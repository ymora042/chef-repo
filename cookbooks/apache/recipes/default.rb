#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#chef-repo\cookbook\apache\recipes\default.rb


package node["package_name"] do
	action :install
end

service node["service_name"]  do
  action [ :enable, :start]
end

 template "#{node["document_root"]}/index.html" do
 source "index.html.ebr"
 mode 0644
 variables(
 	memory:  node["memory"]["total"].to_i / 1024
 )
 
 end

#write our homepage
# cookbook_file "#{document_root}/index.html" do
# 	source "index.html"
# 	mode "0644"
# end



