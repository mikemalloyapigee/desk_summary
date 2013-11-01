class AddTestCaseIdsToRegressionTests < ActiveRecord::Migration
  def change
    add_column :regression_tests, :test_cases, :string
  end
end
