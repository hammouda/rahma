class FixForignKeyName < ActiveRecord::Migration[5.0]
  def change
      rename_column :members, :beneficiare_id, :beneficiaire_id
  end
end
