class ServiceBeneficiaire < ApplicationRecord
  belongs_to :service
  belongs_to :beneficiaire
end
