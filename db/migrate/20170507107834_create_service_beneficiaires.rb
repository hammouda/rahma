class CreateServiceBeneficiaires < ActiveRecord::Migration[5.0]
  def change
    create_table :service_beneficiaires do |t|
      t.decimal :cout
      t.date :date_service
      t.references :service, foreign_key: true
      t.references :beneficiaire, foreign_key: true

      t.timestamps
    end
  end
end
