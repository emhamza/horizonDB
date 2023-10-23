class QuarterlyService < ApplicationRecord
    belongs_to :user

    validates :name, :quarterly, :annual_total, :user_id, presence: true
end
