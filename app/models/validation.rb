class Validation < ActiveRecord::Base
  attr_accessible :key, :match_string, :type, :value
end
