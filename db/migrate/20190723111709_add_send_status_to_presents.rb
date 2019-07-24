class AddSendStatusToPresents < ActiveRecord::Migration[5.2]
  def change
    add_column :presents, :send_status, :integer,null: false, default: 0
  end
end
