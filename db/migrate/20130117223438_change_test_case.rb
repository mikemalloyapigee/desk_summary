class ChangeTestCase < ActiveRecord::Migration
  def up
    remove_column :test_cases, :base_path
    remove_column :test_cases, :app_name
    remove_column :test_cases, :api_product
    remove_column :test_cases, :developer
    remove_column :test_cases, :api_name
    remove_column :test_cases, :auth_path
    remove_column :test_cases, :auth_field
    remove_column :test_cases, :bundle_name
    remove_column :test_cases, :bundle_path
    add_column :test_cases, :uses_oauth, :binary
    add_column :test_cases, :auth_url, :text
    add_column :test_cases, :auth_headers, :text
    add_column :test_cases, :auth_body, :text
    add_column :test_cases, :request_type, :string
    add_column :test_cases, :request_url, :text
    add_column :test_cases, :request_body, :text
    add_column :test_cases, :verification_signature, :string
  end

  def down
  end
end
