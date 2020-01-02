class AddPrimaryColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :primary, :boolean, default: false, null: false
    # NOTE: Please uncomment following line if you want only one 'true' (constraint) in the table.
    add_index :posts, :primary, unique: true, where: "(posts.primary IS TRUE)"
  end
end

