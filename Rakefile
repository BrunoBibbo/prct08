$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar las espectativas de la clase Matriz. (Por defecto)."
task :spec do
  sh "rspec -I. spec/Matriz_spec.rb"
end

desc "Ejecutar las espectativas de la clase Matriz con documentacion"
task :local do
  sh "rspec --format documentation -Ilib -Ispec spec/Matriz_spec.rb"
end

desc "Ejecutar las espectativas de la clase Matriz con documentacion html."
task :html do
  sh "rspec -I. spec/Matriz_spec.rb --format html"
end

