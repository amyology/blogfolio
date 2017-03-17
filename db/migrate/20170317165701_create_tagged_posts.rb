class CreateTaggedPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :tagged_posts do |t|
      t.integer :post_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
