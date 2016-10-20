class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :apprentice, index: true
      t.references :company, index: true
      t.timestamps null: false
    end
  end
end
