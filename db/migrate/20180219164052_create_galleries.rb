class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.json :avatars
      t.string :place
      t.boolean :published

      t.timestamps
    end
  end
end
