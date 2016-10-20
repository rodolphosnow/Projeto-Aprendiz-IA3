class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :code
      t.references :userable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
