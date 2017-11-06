class CreateStudyPlans < ActiveRecord::Migration
  def change
    create_table :study_plans do |t|
      t.string :code
      t.references :user, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
