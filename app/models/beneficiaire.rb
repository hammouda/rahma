class Beneficiaire < ApplicationRecord
has_many :members
has_many :service_beneficiaires
has_many :services, through: :service_beneficiaires
end
