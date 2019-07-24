class AddSendStatusToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :send_status, :integer,null: false, default: 0
  end
end
