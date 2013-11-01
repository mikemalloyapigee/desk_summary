class TestCase < ActiveRecord::Base
  attr_accessible :uses_oauth, :auth_url, :auth_headers, :auth_body, :request_type, :request_url, :request_body, :verification_signature, :name
  attr_accessible :headers_attributes, :request_headers, :company_id
  validates :name, presence: true, length: { maximum: 50 }
  has_many :headers
  has_many :test_relationships
  has_many :regression_tests, :through => :test_relationships
  has_many :test_case_results
  belongs_to :company
  accepts_nested_attributes_for :headers
end
