class RegressionTest < ActiveRecord::Base
  attr_accessible :environment_id, :name, :org_id
  validates :name, presence: true, length: { maximum: 50 }
  has_many :test_relationships
  has_many :test_cases, through: :test_relationships
end
