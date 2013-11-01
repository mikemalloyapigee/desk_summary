class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.string :base_path
      t.string :app_name
      t.string :api_product
      t.string :developer
      t.string :api_name
      t.string :auth_path
      t.string :auth_field
      t.string :bundle_name
      t.string :bundle_path

      t.timestamps
    end
  end
end
