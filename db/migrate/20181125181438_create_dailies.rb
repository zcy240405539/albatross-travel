class CreateDailies < ActiveRecord::Migration[5.2]
  def change
    create_table :dailies do |t|
      t.string :name
      t.text :content
      t.integer :daynumber
      t.datetime :dailydate
      t.references :user, foreign_key: true
      t.references :itinerary, foreign_key: true
      t.references :region, foreign_key: true
      t.references :city, foreign_key: true
      t.references :attraction, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
