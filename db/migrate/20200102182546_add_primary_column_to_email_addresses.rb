class AddPrimaryColumnToEmailAddresses < ActiveRecord::Migration[6.0]
  def change
    # add_column :email_addresses, :primary, :boolean, default: false, null: false
    # NOTE: Please uncomment following line if you want only one 'true' (constraint) in the table.
    add_index :email_addresses, %i[user_id primary], unique: true, where: "(email_addresses.primary IS TRUE)"
  end
end

