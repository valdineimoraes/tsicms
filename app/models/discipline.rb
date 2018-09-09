class Discipline < ApplicationRecord

    validates :name, :code, presence :true, :uniqueness: true

    belongs_to :matrix
    belongs_to :period
    
end
