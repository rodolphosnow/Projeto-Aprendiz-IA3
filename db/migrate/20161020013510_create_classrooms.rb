class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :subjects, index: true
      t.timestamps null: false
    end
  end
end
