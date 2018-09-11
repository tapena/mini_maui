class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.string :description
      
      t.timestamps
    end
  end
end
