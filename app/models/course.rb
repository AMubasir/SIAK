class Course < ActiveRecord::Base
  
  #Relation between Course and Major
  has_many :major_courses
  has_many :major, through: :major_courses

  #Relation between User and Course
  has_many :study_plans
  has_many :users, through: :study_plans

  belongs_to :lecturer
end
