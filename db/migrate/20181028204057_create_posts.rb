class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :view
      t.string :title
      t.text :content
      t.references :user, foreign_key: true
      t.references :region, foreign_key: true
      t.references :city, foreign_key: true
      t.references :attraction, foreign_key: true

      t.timestamps
    end
  end
end
