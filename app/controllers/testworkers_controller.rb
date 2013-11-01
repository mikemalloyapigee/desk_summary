class TestWorkersController < ApplicationController
  def initialize
    @tc = TestCase.find(2)
    @tcr = TestCaseResult.create()
  end
  
  def do_it
    TestCaseWorker.perform_async(@tc.id, @tcr.id, 2 )
  end
end