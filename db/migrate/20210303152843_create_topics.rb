class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :category
      t.string :title
      t.text :content

      t.timestamps
    end

    add_index :topics, :user_id
  end
end
