desc "Assembles all JS/CSS assets into single file(s)"
task :static_assets => :environment do
  puts "Compiling Coffeescript..."
  Rake::Task["bistro_car"].execute
  puts "Assembling Assets..."
  #sh 'jammit'
  require 'jammit'
  Jammit.package!
  puts "Done."
end