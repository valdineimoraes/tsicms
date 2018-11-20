class Activity < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  has_many :activity_professors, dependent: :restrict_with_error
  has_many :professors, through: :activity_professors

  def self.activity_professors(title)
    find_by!(name: title).activity_professors
  end
  def self.current_responsible(title)
    activity_professors(title).find_by(end_date: nil).professor
  end
end
