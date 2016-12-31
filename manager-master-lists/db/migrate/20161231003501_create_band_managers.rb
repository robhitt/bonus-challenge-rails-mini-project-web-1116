class CreateBandManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :band_managers do |t|
      t.integer :band_id
      t.integer :manager_id

      t.timestamps
    end
  end
end
