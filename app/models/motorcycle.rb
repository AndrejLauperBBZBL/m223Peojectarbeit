class Motorcycle < ApplicationRecord
  belongs_to :user
  belongs_to :motorbike_type
end
