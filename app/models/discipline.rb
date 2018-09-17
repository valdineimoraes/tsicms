class Discipline < ApplicationRecord

   
    validates :name, presence: true
    validates :code, presence: true
   
    belongs_to :period
    
end
