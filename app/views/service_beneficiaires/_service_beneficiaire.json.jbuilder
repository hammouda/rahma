json.extract! service_beneficiaire, :id, :cout, :date_service, :service_id, :beneficiaire_id, :created_at, :updated_at
json.url service_beneficiaire_url(service_beneficiaire, format: :json)
