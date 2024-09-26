# app/models/license.rb
class License < ApplicationRecord
  belongs_to :user

  enum status: { pending: "pending", approved: "approved", rejected: "rejected" }
end
