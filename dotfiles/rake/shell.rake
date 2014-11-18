namespace :shell do
  task :init do
    sh "pip install git+git://github.com/Lokaltog/powerline"
  end
end
