#roles/base-ubuntu.rb

name "base-ubuntu"
description "Base Role for ubuntus Servers"
run_list    "recipe[update]", "recipe[chef-client::crop]"