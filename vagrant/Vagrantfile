Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  config.vm.define "server" do |srv|
    srv.vm.hostname = "nginxmariadb"
    srv.vm.network "private_network", ip: "192.168.56.10"

    srv.vm.provision "shell", path: "../scripts/install_nginx.sh"
    srv.vm.provision "shell", path: "../scripts/install_mariadb.sh"
    srv.vm.provision "shell", path: "../scripts/hardening.sh"
  end
end
