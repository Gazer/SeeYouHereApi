class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.float :latitud, null: false
      t.float :longitud, null: false
      t.string :short_code, null: false

      t.timestamps
    end
  end
end
