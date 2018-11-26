class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :name
      t.integer :view
      t.text :content
      t.text :intro
      t.datetime :startdate
      t.datetime :enddate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
