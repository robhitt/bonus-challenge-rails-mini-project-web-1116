class CreateManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :apt
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :office_id
      t.string :email
      t.string :phone
      t.string :ext
      t.timestamps
    end
  end
end
