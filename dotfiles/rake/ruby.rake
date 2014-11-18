namespace :ruby do
  task :init do
    sh "gem install pry"
  end

  task :vagrant do
    sh "apt-get -y install dpkg-dev virtualbox-dkms"
    sh "wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.5_x86_64.deb"
    sh "dpkg -i vagrant_1.6.5_x86_64.deb"
    sh "apt-get -y install linux-headers-$(uname -r)"
    sh "dpkg-reconfigure virtualbox-dkms"
    sh "hash -d vagrant"

    sh "vagrant plugin install vagrant-hostmanager vagrant-vbguest"
  end
end
