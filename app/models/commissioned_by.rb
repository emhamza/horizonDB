class CommissionedBy < ApplicationRecord
    has_many :service_types, foreign_key: 'commissioned_by_id', dependent: :destroy

    validates :name
end
