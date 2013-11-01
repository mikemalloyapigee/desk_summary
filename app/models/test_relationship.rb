class TestRelationship < ActiveRecord::Base
  attr_accessible :regression_test_id, :test_case_id
  belongs_to :regression_test
  belongs_to :test_case
end
