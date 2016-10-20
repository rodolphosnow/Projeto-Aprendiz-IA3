class CreateResponsibles < ActiveRecord::Migration
  def change
    create_table :responsibles do |t|
      t.references :userable, polymorphic: true, index: true
      t.references :apprentice, index: true
      t.timestamps null: false
    end
  end
end
