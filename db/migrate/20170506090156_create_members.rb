class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :nom
      t.string :prenom
      t.date :date_naissance
      t.string :etat_medical
      t.string :sexe
      t.text :remarque
      t.references :beneficiaire, foreign_key: true

      t.timestamps
    end
  end
end
