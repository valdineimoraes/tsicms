class Period < ApplicationRecord

    validates :name, presence: true, uniqueness: true

    has_many :disciplines

    belongs_to :matrix

end
