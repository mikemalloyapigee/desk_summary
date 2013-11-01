class Header < ActiveRecord::Base
  attr_accessible :key, :value
  belongs_to :test_case
end
