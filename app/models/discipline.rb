class Discipline < ApplicationRecord

   
    validates :name, presence: true, uniqueness: true
    validates :code, presence: true, uniqueness: true
    validates :hours, presence: true
   
    belongs_to :period
    
end
