class AddTestCaseIdToHeaders < ActiveRecord::Migration
  def up
    add_column :headers, :test_case_id, :integer
  end
end
