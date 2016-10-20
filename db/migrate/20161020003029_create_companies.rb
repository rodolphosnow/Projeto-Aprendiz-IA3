class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.references :userable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
