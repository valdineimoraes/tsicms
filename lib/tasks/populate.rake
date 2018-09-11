namespace :db do
    desc "Erase and fill database"
    task :populate => :environment do

        [Matrix].each(&:delete_all) 
        

        

        10.times do
            Matrix.create(
                name: Faker::Science.scientist
                  
            )
        end

      

    end
end
