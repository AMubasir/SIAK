class AddToDevise < ActiveRecord::Migration
  def change
  	add_column :users, :student_number, :integer
  	add_column :users, :full_name, :string
  	add_column :users, :address, :string
  	add_column :users, :place_of_birth, :string
  	add_column :users, :date_of_birth, :datetime
  	add_column :users, :phone, :string
  	add_column :users, :gender, :boolean
  	add_column :users, :religion, :string
  end
end
