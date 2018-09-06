namespace :db do
    desc "Erase and fill database"
    task :populate => :environment do
        [Matrix].each(&:delete_all) 

        30.times do
            Matrix.create(
            name: Faker::Name.name
            )
        end 
    end
end
