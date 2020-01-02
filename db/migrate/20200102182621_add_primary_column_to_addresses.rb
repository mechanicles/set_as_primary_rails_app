class AddPrimaryColumnToAddresses < ActiveRecord::Migration[6.0]
  def change
    # add_column :addresses, :default, :boolean, default: false, null: false
    # NOTE: Please uncomment following line if you want only one 'true' (constraint) in the table.
    add_index :addresses, %i[owner_id owner_type default], unique: true, where: "(addresses.default IS TRUE)"
  end
end

