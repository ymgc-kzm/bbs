class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :message
      t.integer :post_id
      t.references :posts
        
      t.timestamps
    end
    add_index :comments, :post_id
  end
end
