class AddGrateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :grade, :integer
  end
end
