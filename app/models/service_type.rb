class ServiceType < ApplicationRecord
  belongs_to :user
  belongs_to :commissioned
end
