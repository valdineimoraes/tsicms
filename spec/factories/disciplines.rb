FactoryBot.define do
  factory :discipline do
    sequence(:name) {|n| "Disciplina #{n}"}
    
  end
end
