class AddReasonsToTestCaseResults < ActiveRecord::Migration
  def change
    add_column :test_case_results, :reasons, :string
  end
end
