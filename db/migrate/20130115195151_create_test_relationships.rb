class CreateTestRelationships < ActiveRecord::Migration
  def change
    create_table :test_relationships do |t|
      t.integer :regression_test_id
      t.integer :test_id

      t.timestamps
    end
  end
end
