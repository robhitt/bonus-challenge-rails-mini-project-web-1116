class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :website
      t.string :photo_url
      t.string :logo_url
      t.timestamps
    end
  end
end
