# app/models/booking.rb
class Booking < ApplicationRecord
  belongs_to :motorcycle
  belongs_to :user

  enum status: { pending: "pending", approved: "approved", rejected: "rejected" }

  def eligible_to_book?(user)
    # Check if the user's license category allows them to book the motorcycle
    License.approved.exists?(user: user) && user.license.category <= motorcycle.category
  end
end
