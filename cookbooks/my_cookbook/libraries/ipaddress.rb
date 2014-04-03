class Chef::Recipe::IPAddress
  def self.netmask(ipaddress)
   IPADDRESS(ipaddress).netmask
  end

end