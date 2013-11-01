class TestStepResult < ActiveRecord::Base
  attr_accessible :end_time, :response_body, :response_code, :response_headers, :result_type_id, :start_time
end
