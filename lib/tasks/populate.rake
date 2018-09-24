namespace :db do
    desc "Erase and fill database"
    task :populate => :environment do
    
    15.times do
        Matrix.create(
            name: Faker::Job.field
            )
        end
    end

     
    15.times do
        Period.create(
            name: Faker::Educator.subject
            
            #matrix: 
            )
        end
    end

    15.times do
        Discipline.create(
            name: Faker::Educator.course_name
            code: Faker::Code.asin
            hours: Faker::Number.number(3)
            menu: Faker::Lorem.paragraph(3)
            #Period 
            )
        end
    end
    


end
