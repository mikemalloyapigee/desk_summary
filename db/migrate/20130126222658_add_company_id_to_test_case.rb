class AddCompanyIdToTestCase < ActiveRecord::Migration
  def change
    add_column :test_cases, :company_id, :integer
  end
end
