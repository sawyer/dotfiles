task default: %w[dotfiles:init vim:init bash:init]

REPO_DIRECTORY = File.dirname(__FILE__)

namespace :dotfiles do
  task :init do
    sh("dotfiles --sync -R #{REPO_DIRECTORY}/dotfiles")
  end
end

namespace :vim do
  task :init do
    sh("vim +BundleInstall! +q +q")
  end
end

namespace :bash do
  task :init do
    sh("sudo pip install git+git://github.com/Lokaltog/powerline")
  end
end
