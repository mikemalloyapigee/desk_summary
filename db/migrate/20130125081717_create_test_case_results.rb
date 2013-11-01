class CreateTestCaseResults < ActiveRecord::Migration
  def change
    create_table :test_case_results do |t|
      t.integer :test_case_id
      t.string :result
      t.string :verification_signature
      t.text :headers
      t.text :body

      t.timestamps
    end
  end
end
