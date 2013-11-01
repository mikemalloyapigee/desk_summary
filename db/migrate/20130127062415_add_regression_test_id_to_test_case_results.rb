class AddRegressionTestIdToTestCaseResults < ActiveRecord::Migration
  def change
    add_column :test_case_results, :regression_test_id, :integer
  end
end
