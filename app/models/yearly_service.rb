class YearlyService < ApplicationRecord
  belongs_to :user

  validates :name, :year, :annual_total, :user_id, presence: true
end
