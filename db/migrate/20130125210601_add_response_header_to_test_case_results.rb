class AddResponseHeaderToTestCaseResults < ActiveRecord::Migration
  def change
    add_column :test_case_results, :response_headers, :text
  end
end
