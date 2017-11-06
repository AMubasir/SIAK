class RemoveMajorIdFromCourse < ActiveRecord::Migration
  def change
  	remove_foreign_key :courses, :majors
    remove_reference :courses, :majors, index: true
  end
end
