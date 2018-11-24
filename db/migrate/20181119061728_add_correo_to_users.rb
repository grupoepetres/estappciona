class AddCorreoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :correo, :string
  end
end
