class Period < ApplicationRecord

    #validates :name, presence :true

    has_many :disciplines

    belongs_to :matrix

end
