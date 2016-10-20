class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.references :classroom_students
      t.string :criterion
      t.string :grade
      t.timestamps null: false
    end
  end
end
