class Schedule < ApplicationRecord
  belongs_to :user
  has_many :schedule_blocks, dependent: :destroy
  accepts_nested_attributes_for :schedule_blocks, allow_destroy: true
end
