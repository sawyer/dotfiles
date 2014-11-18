namespace :python do
  task :init do
    sh "pip install ipdb tox"
  end
end
