class Admins::Matrix < ApplicationRecord

    validates :name, presence: true, :uniqueness:true

    has_many :discipline

end
