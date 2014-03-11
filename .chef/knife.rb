# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ymora042"
client_key               "#{current_dir}/ymora042.pem"
validation_client_name   "ultimate_software-validator"
validation_key           "#{current_dir}/ultimate_software-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/ultimate_software"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright       "ultimate_software"
cookboook_license        "apachev2"
cookboook_email          "ymora042@fiu.edu"
knife[:editor] = '"C:\Program Files (x86)\Notepad++\notepad++.exe" -nosession -multiInst'

