class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :localName
      t.text :content
      t.text :intro
      t.references :region, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
