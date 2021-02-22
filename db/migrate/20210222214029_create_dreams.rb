class CreateDreams < ActiveRecord::Migration[6.1]
  def change
    create_table :dreams do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.boolean :achieved
      t.date :date_achieved
      t.integer :category_id

      t.timestamps
    end
  end
end
