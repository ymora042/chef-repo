#roles/webserver.rb

name "webserver"
description "Web Servers"
run_list "recipe[my-company]", "recipe[ntp]"
default_attributes({
      "company" => "Ultimate Software"
})

default_attributes 'ntp' => {
     'ntpdate' => {
     	'disable'=>  true
     }


}