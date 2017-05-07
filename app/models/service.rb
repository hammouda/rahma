class Service < ApplicationRecord
    has_many :service_beneficiaires
    has_many :beneficiaires, through: :service_beneficiaires
end
