class CreateSchemes < ActiveRecord::Migration[5.1]
  def change
    create_table :schemes do |t|
      t.string :title
      t.text :description
      t.json :avatars
      t.decimal :price
      t.date :start_date
      t.date :end_date
      t.boolean :published

      t.timestamps
    end
  end
end
