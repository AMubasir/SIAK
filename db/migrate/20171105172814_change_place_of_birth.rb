class ChangePlaceOfBirth < ActiveRecord::Migration
  def change
  	change_column :lecturers, :place_of_birth, :string
  end
end
