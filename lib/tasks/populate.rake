namespace :db do
    desc "Erase and fill database"
    task :populate => :environment do

        [Period].each(&:delete_all) 
    
        10.times do
            Period.create(
                name: Faker::Science.scientist
                  
            )
        end

    end
end
