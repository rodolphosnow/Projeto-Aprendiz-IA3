class CreateClassroomPresences < ActiveRecord::Migration
  def change
    create_table :classroom_presences do |t|
      t.references :classroom_students
      t.datetime :data
      t.boolean :first
      t.boolean :second
      t.boolean :third
      t.boolean :fourth
      t.timestamps null: false
    end
  end
end
