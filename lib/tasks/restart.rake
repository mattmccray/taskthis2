desc "Touches tmp/restart.txt (for use with Passenger or POW!)"
task :restart do
  `touch ./tmp/restart.txt`
end