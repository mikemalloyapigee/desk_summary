class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.integer :result_type_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
