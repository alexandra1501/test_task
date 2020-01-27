class Notification < ApplicationRecord
  validates :identifier, uniqueness: true
end
