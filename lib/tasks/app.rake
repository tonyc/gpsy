namespace :app do
  desc "Count Posts"
  task :count_posts => :environment do
    puts "Post count: #{Post.count}"
  end
end
