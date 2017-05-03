json.extract! beneficiaire, :id, :nom, :prenom, :etat_civil, :metier, :num_cnss, :lieu_naissance, :date_naissance, :adresse, :telephone, :nom_conjoint, :prenom_conjoint, :metier_conjoint, :lieu_naissance_conjoint, :telephone_conjoint, :nbre_membre_famille, :nbre_garcon, :nbre_fille, :created_at, :updated_at
json.url beneficiaire_url(beneficiaire, format: :json)
