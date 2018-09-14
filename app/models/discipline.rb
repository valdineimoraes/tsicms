class Discipline < ApplicationRecord

   
    #validates :name, presence: true
   
    belongs_to :period
    
end
