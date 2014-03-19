Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
  config.vm.network "forwarded_port", guest: 9292, host: 9292
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  
  config.vm.provider :virtualbox do |vb|
    vb.name = "logstash"
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
  
  config.vm.provision :shell do |s| 
    s.path = "scripts/bootstrap.sh"
  end
end
