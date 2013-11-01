class ChangeColumnTypeForUsesOAuth < ActiveRecord::Migration
  def up
    remove_column :test_cases, :uses_oauth
    add_column :test_cases, :uses_oauth, :boolean
  end

  def down
  end
end
