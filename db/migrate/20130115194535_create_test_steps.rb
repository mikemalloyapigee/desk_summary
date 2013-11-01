class CreateTestSteps < ActiveRecord::Migration
  def change
    create_table :test_steps do |t|
      t.string :name
      t.string :resource

      t.timestamps
    end
  end
end
