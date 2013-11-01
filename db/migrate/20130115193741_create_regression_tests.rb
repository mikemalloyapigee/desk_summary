class CreateRegressionTests < ActiveRecord::Migration
  def change
    create_table :regression_tests do |t|
      t.string :name
      t.integer :environment_id
      t.integer :org_id

      t.timestamps
    end
  end
end
