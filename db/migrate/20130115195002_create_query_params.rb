class CreateQueryParams < ActiveRecord::Migration
  def change
    create_table :query_params do |t|
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
