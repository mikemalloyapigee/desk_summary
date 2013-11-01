class ChangeTestResultResultType < ActiveRecord::Migration
  def up
    remove_column :test_case_results, :result
    add_column :test_case_results, :result, :boolean
  end

  def down
  end
end
