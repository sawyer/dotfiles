def source(filename)
  sh "bash #{File.join(File.dirname(__FILE__), 'util', filename)}"
end
