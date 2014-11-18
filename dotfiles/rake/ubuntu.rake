task ubuntu: %w[default ubuntu:init ubuntu:application]

namespace :ubuntu do
  task :init do
    sh "dpkg --add-architecture i386"

    sh "apt-get -y install build-essential"
    sh "curl https://bootstrap.pypa.io/get-pip.py | sudo python -"

    sh "mkdir ~/software"
    sh "mkdir ~/tribone/software"
    sh "mv ~/dotfiles ~/tribone/software/dotfiles"
  end

  task application: %w[application:terminator application:spotify
                       application:chrome application:mutate application:skype]
  namespace :application do
    task :terminator do
      sh "apt-get -y install terminator"
    end

    task :spotify do
      sh "apt-add-repository -y 'deb http://repository.spotify.com stable non-free' &&
          apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 &&
          apt-get update -qq && apt-get -y install spotify-client"
    end

    task :chrome do
      sh "wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -"
      sh "sh -c 'echo \"deb http://dl.google.com/linux/chrome/deb/ stable main\" >>
          /etc/apt/sources.list.d/google-chrome.list'"
      sh "apt-get -y install google-chrome-stable"
    end

    task :mutate do
      sh "add-apt-repository ppa:wei-qianghb/mutate"
      sh "apt-get update && apt-get -y install mutate"
    end

    task :skype do
      sh "add-apt-repository \"deb http://archive.canonical.com/ trusty partner\""
      sh "apt-get update && apt-get install skype"
    end
  end
end
