class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, :default=>false
    add_column :users, :role, :string, :default=>"user"
    add_column :users, :locked_at, :datetime
  end
end
