class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :phone
      t.string :name
      t.string :password_digest
      t.boolean :is_manager, default: false

      t.string :auth_info
      t.boolean :is_authorized, default: false

      t.timestamps
    end

    add_index :users, :phone
  end
end
