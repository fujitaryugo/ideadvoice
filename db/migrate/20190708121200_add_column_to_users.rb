class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :sex, :integer
    add_column :users, :age, :integer
    add_column :users, :location, :integer
    add_column :users, :deleted_at, :datetime
    add_index :users, :deleted_at
  end
end
