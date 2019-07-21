class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.integer :client_id
      t.integer :idea_id

      t.timestamps
    end
  end
end
