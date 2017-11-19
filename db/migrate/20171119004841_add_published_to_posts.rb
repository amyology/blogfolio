class AddPublishedToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :published, :boolean, :default => false
    remove_column :posts, :public
  end
end
