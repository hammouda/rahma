class CreateBeneficiaires < ActiveRecord::Migration[5.0]
  def change
    create_table :beneficiaires do |t|
      t.string :nom
      t.string :prenom
      t.string :etat_civil
      t.string :metier
      t.integer :num_cnss
      t.string :lieu_naissance
      t.date :date_naissance
      t.string :adresse
      t.integer :telephone
      t.string :nom_conjoint
      t.string :prenom_conjoint
      t.string :metier_conjoint
      t.string :lieu_naissance_conjoint
      t.integer :telephone_conjoint
      t.integer :nbre_membre_famille
      t.integer :nbre_garcon
      t.integer :nbre_fille

      t.timestamps
    end
  end
end
