class CreateOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :offices do |t|
      t.string :name
      t.string :street
      t.string :suite
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :fax

      t.timestamps
    end
  end
end
