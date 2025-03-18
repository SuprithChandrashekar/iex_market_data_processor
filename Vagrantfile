# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox"

  config.vm.box = "generic/fedora35"

  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: false

  
  config.vm.define "iexdata" do |iexdata|
    iexdata.vm.hostname = "iexdata"
    
    iexdata.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
      vb.customize ["modifyvm", :id, "--cpus", "4"]
    end
  
    #tcp1.vm.network "private_network", ip: "192.168.50.101", virtualbox__intnet: "tcp_network", nic_type: "virtio"
    
    #forward the port that MySQL listens on inside the VM to the local host of 33061 so that on your main machine
    #you can connect to 127.0.0.1:33061 to connect to MySQL running inside this VM
    #mysql.vm.network "forwarded_port", guest: 3306, host: 33061
    #mysql.vm.network "forwarded_port", guest: 8000, host: 8000
  
    #sudo dnf install -y python3-pip
    #python3 -m pip install requests tqdm
    #sudo yum -y install tcpdump
    #sudo yum -y install pypy3
    
    iexdata.vm.provision "shell", inline: "sudo dnf install -y python3-pip"
    iexdata.vm.provision "shell", inline: "python3 -m pip install requests tqdm", privileged: false
    iexdata.vm.provision "shell", inline: "sudo yum -y install tcpdump pypy3"
    iexdata.vm.provision "shell", inline: "pypy3 -m ensurepip", privileged: false
    iexdata.vm.provision "shell", inline: "pypy3 -m pip install pytz", privileged: false

  end
end

