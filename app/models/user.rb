# app/models/user.rb
class User < ApplicationRecord
  has_secure_password

  # A user can own many motorcycles
  has_many :motorcycles, dependent: :destroy

  # Attachments for the license front and back images
  has_one_attached :license_front
  has_one_attached :license_back

  belongs_to :motorcycle, optional: true

  # Validations
  validates :username, presence: true
  validates :email, presence: true
  validates :license_front, presence: true
  validates :license_back, presence: true

  # Ensure the user selects a motorcycle on signup
  validate :must_have_motorcycle, on: :create

  private

  def must_have_motorcycle
    errors.add(:motorcycles, "must have at least one motorcycle") if motorcycles.empty?
  end
end


