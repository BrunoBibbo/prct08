$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar las espectativas de la clase Matriz. (Por defecto)."
task :spec do
  sh "rspec -I. spec/Matriz_spec.rb"
end
