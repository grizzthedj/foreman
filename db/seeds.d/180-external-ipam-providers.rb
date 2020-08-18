
['phpIPAM', 'Netbox'].each do |provider|
  ExternalIpamProvider.where({name: provider}).first_or_create({name: provider})
end