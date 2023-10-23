class MonthlyService < ApplicationRecord
    belongs_to :user

    validates :name, :month, :annual_total, :user_id, presence: true
end
