class RemoveMajorIdFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :major_id, :integer
    remove_reference :courses, :major_id, index: true, foreign_key: true
  end
end
