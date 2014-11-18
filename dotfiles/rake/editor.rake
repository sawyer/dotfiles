namespace :editor do
  task :init do
    sh "vim +BundleInstall! +q +q"
  end
end
