class TestCaseResult < ActiveRecord::Base
  attr_accessible :body, :headers, :result, :test_case_id, :verification_signature, :response_code, :details
  attr_accessible :regression_test_id
  belongs_to :test_case
end
