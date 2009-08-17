namespace :app do
  desc "Count Posts"
  task :count_posts => :environment do
    puts "Post count: #{Post.count}"
  end
  
  desc "Create a post"
  task :create_post => :environment do
    post = Post.new(:body => "This is the body of the post.")
    if post.save
      puts "post saved"
    else
      puts "post NOT saved."
    end
  end
end
