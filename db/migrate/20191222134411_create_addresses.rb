class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :data, null: false
      t.boolean :default, default: false, null: false
      t.integer :owner_id, null: false
      t.string :owner_type, null: false

      t.index [:owner_id, :owner_type]
      t.timestamps
    end
  end
end
