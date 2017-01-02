class CreateBandMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :band_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :apt
      t.string :city
      t.string :state
      t.integer :zip
      t.string :instrument
      t.string :email
      t.string :phone
      t.text :notes
      t.integer :band_id
      t.date :birthday

      t.timestamps
    end
  end
end
