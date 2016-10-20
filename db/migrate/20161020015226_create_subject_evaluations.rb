class CreateSubjectEvaluations < ActiveRecord::Migration
  def change
    create_table :subject_evaluations do |t|
      t.references :subject
      t.string :criterion
      t.string :grade
      t.timestamps null: false
    end
  end
end
