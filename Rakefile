require 'rspec/core/rake_task'
SINATRA_PORT = 4567

task :default => :start

task :start do
  sh "rerun --background -- rackup --port #{SINATRA_PORT} -o 0.0.0.0"
end

task :bdd do
  sh 'rspec spec/bdd'
end
