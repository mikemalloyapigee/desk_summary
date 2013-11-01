class AddDetailsToTestCaseResults < ActiveRecord::Migration
  def change
    remove_column :test_case_results, :reasons
    add_column :test_case_results, :details, :string
  end
end
