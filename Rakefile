task default: %w[dotfiles]

REPO_DIRECTORY = File.dirname(__FILE__)

task :dotfiles do
  sh("dotfiles --sync -R #{REPO_DIRECTORY}/dotfiles")
end
