class CreateMyUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :my_users do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
