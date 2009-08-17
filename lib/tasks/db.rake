namespace :db do
  desc "Automigrate Database"
  task :automigrate => :environment do
    DataMapper.auto_migrate!
  end
  
  desc "Autoupgrade database"
  task :autoupgrade => :environment do
    DataMapper.auto_upgrade!
  end
  
  desc "Migrate Database (DESTRUCTIVE!)"
  task :migrate => :environment do
    DataMapper.migrate!
  end
end