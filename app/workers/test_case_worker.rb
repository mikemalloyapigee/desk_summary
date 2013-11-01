class TestCaseWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  
  def get_oauth_token(test_case_id)
    debugger
    test_case=TestCase.find(test_case_id)
    unparsed_headers = test_case.auth_headers.split("||")
    headers = []
    unparsed_headers.each do |h|
      header_pieces = h.split(':')
      header = { :name => header_pieces[0].strip, :value => header_pieces[1].strip }
      headers << header
    end
    c = Curl::Easy.http_post( test_case.auth_url, test_case.auth_body ) do |curl|
        headers.each do |h|
        curl.headers[h[:name]] = h[:value]
      end
    end
    retval = {}
    retval[:response_code] = c.response_code
    retval[:access_token] = JSON.parse(c.body_str)["access_token"]
    return retval
  end
  
  def check_test_case_result(tcr)
    test_passed = true
    test_details = ""
    if tcr.response_code == 200
      test_details += "Response code 200 received"
    else
      test_passed = false
      test_details += ";Response code #{tcr.response_code} received"
    end
    unless tcr.verification_signature.blank?
      if tcr.body =~ /#{tcr.verification_signature}/
        test_details += ";Verification signature matched"
      else
        test_passed = false
        test_details = ';Verification signature did not match'
      end
    else
      test_details += ";No verification signature given"
    end
    return {test_passed: test_passed, details: test_details }
  end
  
  def execute_test(test_case_id, test_case_result_id, regression_test_id)
    debugger
    # get the OAuth token if using OAuth
    tcr = TestCaseResult.find(test_case_result_id)
    test_case = TestCase.find(test_case_id)
    tcr.regression_test_id = regression_test_id
    oauth_token = {}
  
    if test_case.uses_oauth
      oauth_token_hash = get_oauth_token test_case.id
    end  
=begin      
      if oauth_token[:access_token].nil? or oauth_token[:response_code] != 200
        tcr.result = false
        tcr.details = "OAuth token not received"
        return
      else
        tcr.details = "Oauth token received"
      end
      tcr.save
    end
    
    # make the request
    if test_case.uses_oath
      c_ret = Curl::Easy.new(test_case.request_url) do |curl| 
        if test_case.uses_oauth
          curl.headers["Authorization"] = "Bearer " + oauth_token 
        end
        curl.verbose = true
      end  
    end
    c_ret.perform
    
    
    # Save results
    tcr.verification_signature = test_case.verification_signature
    tcr.body = c_ret.body_str
    tcr.response_code = c_ret.response_code
    tcr.response_headers = c_ret.header_str
    results = check_test_case_result(tcr)
    tcr.result = results[:test_passed]
    tcr.details = results[:details]
    tcr.save
=end    
  end
  
  
  def perform(test_case_id, test_case_result_id, regression_test_id)
    debugger
    execute_test(test_case_id, test_case_result_id, regression_test_id)
  end
  
end