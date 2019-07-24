class AddUserImageIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_image_id, :string
    add_column :users, :job, :integer, null: false, default: 0
  end
end
