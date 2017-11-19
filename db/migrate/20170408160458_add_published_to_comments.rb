class AddPublishedToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :published, :boolean, default: false
  end
end
