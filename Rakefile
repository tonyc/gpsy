desc "Count Posts"
task :count_posts => :environment do
  puts "Post count: #{Post.count}"
end

task :environment do
  require 'lib/bootstrap'
end