#roles/webserver.rb

name "webserver"
description "Web Servers"
run_list "recipe[my-company]", "recipe[apache]"
default_attributes({
      "company" => "Ultimate Software"
})