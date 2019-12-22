class CreateEmailAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :email_addresses do |t|
      t.string :email, null: false
      t.boolean :primary, default: false, null: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
