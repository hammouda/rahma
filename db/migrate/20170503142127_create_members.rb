class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :nom
      t.string :prenom
      t.date :date_naissance
      t.integer :age
      t.string :sexe
      t.string :etat_medical
      t.text :remarque
      t.references :beneficiare, foreign_key: true

      t.timestamps
    end
  end
end
