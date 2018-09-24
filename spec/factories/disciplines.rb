FactoryBot.define do
  factory :discipline do
    sequence(:name){ |n| "Disciplina_#{n}"}
  end
end
