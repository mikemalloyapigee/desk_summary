class AddRequestHeadersToTestCases < ActiveRecord::Migration
  def up
    add_column :test_cases, :request_headers, :text
  end
end
