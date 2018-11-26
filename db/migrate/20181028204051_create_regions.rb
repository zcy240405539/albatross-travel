class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :localName
      t.text :content
      t.text :intro

      t.timestamps
    end
  end
end
