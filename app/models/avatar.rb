class Avatar < ApplicationRecord
  has_one_attached :avatar
  belongs_to :user, optional: true
end
