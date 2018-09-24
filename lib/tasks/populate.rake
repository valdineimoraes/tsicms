namespace :db do
    desc "Erase and fill database"
    task :populate => :environment do
    
    15.times do
        m = Matrix.create(
            name: Faker::Job.field
            )

        6.times do    
            p = m.periods.create

            
            p.disciples.create
        end
        end
    end
end
