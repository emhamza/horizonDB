class BiannualService < ApplicationRecord
    belongs_to :user

    validates :name, :biannual_span, :annual_total, :user_id, presence: true
end
