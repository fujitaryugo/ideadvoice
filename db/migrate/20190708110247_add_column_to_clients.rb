class AddColumnToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :group_name, :string
    add_column :clients, :last_name, :string
    add_column :clients, :first_name, :string
    add_column :clients, :phone_number, :string
    add_column :clients, :client_url, :string
    add_column :clients, :introduction, :string
    add_column :clients, :client_image_id, :string
  end
end
