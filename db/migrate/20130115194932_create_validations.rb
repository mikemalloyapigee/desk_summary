class CreateValidations < ActiveRecord::Migration
  def change
    create_table :validations do |t|
      t.string :type
      t.string :key
      t.string :value
      t.text :match_string

      t.timestamps
    end
  end
end
