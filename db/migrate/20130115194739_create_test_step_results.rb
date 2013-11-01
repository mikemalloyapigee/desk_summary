class CreateTestStepResults < ActiveRecord::Migration
  def change
    create_table :test_step_results do |t|
      t.integer :result_type_id
      t.string :response_code
      t.text :response_headers
      t.text :response_body
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
