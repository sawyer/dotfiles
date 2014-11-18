namespace :dotfiles do
  task :init do
    sh "dotfiles -sMf -R ~/dotfiles/dotfiles"
  end

  task :update do
    sh "dotfiles -sMf -R ~/software/tribone/dotfiles/dotfiles"
  end
end
