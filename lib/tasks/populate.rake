namespace :db do
    desc "Erase and fill database"
    task :populate => :environment do
    
        10.times do
            Matrix.create(
                name: Faker::Job.field
                  
            )
        end

    end
end
