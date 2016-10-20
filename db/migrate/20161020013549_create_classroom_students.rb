class CreateClassroomStudents < ActiveRecord::Migration
  def change
    create_table :classroom_students do |t|
      t.references :classroom, index: true
      t.references :apprentice, index: true
      t.references :teacher, index: true
      t.datetime :started_at
      t.datetime :ends_in
      t.string :status, default: "in-progress"
      t.timestamps null: false
    end
  end
end
