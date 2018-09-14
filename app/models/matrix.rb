class Matrix < ApplicationRecord

    #validates :name, presence :true, uniqueness: true

    has_many :periods
end
