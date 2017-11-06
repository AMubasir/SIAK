class MajorCourse < ActiveRecord::Base
  belongs_to :major
  belongs_to :course
end
