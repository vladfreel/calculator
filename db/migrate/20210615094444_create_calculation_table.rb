class CreateCalculationTable < ActiveRecord::Migration[6.1]
  def change
    create_table :calculations do |t|
      t.integer :a, null: false
      t.integer :b, null: false
      t.string :operation, null: false
      t.string :result, null: false
      t.timestamps
    end
  end
end
