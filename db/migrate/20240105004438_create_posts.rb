class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false, index: { unique: true }
      t.text :description, null: false
      t.string :post_url

      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
