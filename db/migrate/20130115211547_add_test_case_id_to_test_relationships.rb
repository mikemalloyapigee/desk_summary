class AddTestCaseIdToTestRelationships < ActiveRecord::Migration
  def change
    add_column :test_relationships, :test_case_id, :integer
  end
end
