class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_title
      t.text :order_text
      t.string :order_image_id
      t.date :deadline
      t.text :reward_image_id
      t.text :reward_content
      t.integer :client_id

      t.timestamps
    end
  end
end
