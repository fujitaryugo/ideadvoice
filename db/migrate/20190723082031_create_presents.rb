class CreatePresents < ActiveRecord::Migration[5.2]
  def change
    create_table :presents do |t|
      t.string :message
      t.integer :client_id
      t.integer :user_id
      t.integer :idea_id

      t.timestamps
    end
  end
end
