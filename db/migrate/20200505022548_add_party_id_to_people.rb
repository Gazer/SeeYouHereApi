class AddPartyIdToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :party_id, :integer
  end
end
