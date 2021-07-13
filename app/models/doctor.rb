class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
  validates :last_name, length: { minimum: 2 }

  # validates :email, uniqueness: true
  # validates :email, format: { with: /\A.*@.*\.com\z/ }
end
