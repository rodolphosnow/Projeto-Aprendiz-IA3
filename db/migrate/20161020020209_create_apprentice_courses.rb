class CreateApprenticeCourses < ActiveRecord::Migration
  def change
    create_table :apprentice_courses do |t|
      t.references :apprentice, index: true
      t.references :course, index: true
      t.timestamps null: false
    end
  end
end
