class AddColumnPasswordDigestToManager < ActiveRecord::Migration[5.0]
  def change
    add_column :managers, :username, :string
    add_column :managers, :password_digest, :string
  end
end
