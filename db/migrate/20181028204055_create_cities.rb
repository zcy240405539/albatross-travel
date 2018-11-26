class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :localName
      t.text :intro
      t.text :content
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
