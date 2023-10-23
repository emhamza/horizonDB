class ServiceType < ApplicationRecord
    belongs_to :user
    belongs_to :Commissioned_bies


    validates :name, :category, :default_rate, :frequency, :targer, :commissioned_by_id, :user_id, presence: true
end

