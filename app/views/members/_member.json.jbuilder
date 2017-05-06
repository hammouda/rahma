json.extract! member, :id, :nom, :prenom, :date_naissance, :etat_medical, :sexe, :remarque, :beneficiaire_id, :created_at, :updated_at
json.url member_url(member, format: :json)
