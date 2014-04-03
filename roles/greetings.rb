name 'greetings'
description 'Hello from node1'
run_list "recipe[greeting]"

default_attributes "greeting" => {
                             "first_name" => "Sarai",
                             "last_name" => "Morales"
                              } 