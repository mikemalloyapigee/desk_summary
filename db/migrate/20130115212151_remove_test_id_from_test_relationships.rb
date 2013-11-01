class RemoveTestIdFromTestRelationships < ActiveRecord::Migration
  def up
    remove_column :test_relationships, :test_id
  end

  def down
  end
end
