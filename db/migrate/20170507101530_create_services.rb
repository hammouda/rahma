class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :nom
      t.text :description

      t.timestamps
    end
  end
end
