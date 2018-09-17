class Matrix < ApplicationRecord

    validates :name, presence: true

    has_many :periods
end
