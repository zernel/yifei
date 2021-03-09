class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.integer :topic_id
      t.text :content

      t.timestamps
    end

    add_index :replies, :user_id
    add_index :replies, :topic_id
  end
end
