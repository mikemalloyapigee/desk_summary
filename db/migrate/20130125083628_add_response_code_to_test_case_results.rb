class AddResponseCodeToTestCaseResults < ActiveRecord::Migration
  def up
    add_column :test_case_results, :status_code, :string
  end
end
