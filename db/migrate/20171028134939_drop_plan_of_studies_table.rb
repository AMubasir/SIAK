class DropPlanOfStudiesTable < ActiveRecord::Migration
  def change
  	drop_table :plan_of_studies
  end
end
