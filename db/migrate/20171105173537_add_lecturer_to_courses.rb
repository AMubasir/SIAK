class AddLecturerToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :lecturer, index: true, foreign_key: true
  end
end
