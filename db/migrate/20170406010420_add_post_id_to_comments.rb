class AddPostIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :post_id, :integer
  end

  def up
    change_column :comments, :approved, :boolean, :default => false
  end

  def down
    change_column :comments, :approved, :boolean, :default => nil
  end
end
