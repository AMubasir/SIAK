class CreateLecturers < ActiveRecord::Migration
  def change
    create_table :lecturers do |t|
      t.integer :lecturer_number
      t.string :full_name
      t.string :address
      t.datetime :date_of_birth
      t.datetime :place_of_birth
      t.string :phone
      t.string :gender
      t.string :religion

      t.timestamps null: false
    end
  end
end
