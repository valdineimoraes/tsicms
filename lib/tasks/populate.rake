namespace :db do
  desc 'Erase and fill database'
  task populate: :environment do
    [#CategoryRecommendation, Recommendation].each(&:destroy_all)

    matrizes = %w(matriz133 matriz33)
    matrizes.each do |matrix|
      Matrix.create!(name: matrix)
    end

    Period.all.each do |matrix|
      5.times do
        matrix.period.create! title: Faker::Name.name,
          description: Faker::Lorem.paragraph(2),
          image: File.open(Dir["#{Rails.root}/spec/samples/images/*"].sample)
      end
    end
  end
end
