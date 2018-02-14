class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, full: false
      t.string :title
      t.text :description
      t.json :avatars
      t.decimal :price, full: false
      t.decimal :discount, default: 0
      t.boolean :in_stock, default: true
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
