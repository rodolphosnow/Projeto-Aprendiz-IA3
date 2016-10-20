class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.references :courses, index: :true
      t.timestamps null: false
    end
  end
end
