class ChangeResponseCodeToInteger < ActiveRecord::Migration
  def up
    add_column :test_case_results, :response_code, :integer
  end

  def down
  end
end
