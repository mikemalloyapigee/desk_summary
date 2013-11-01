class TmpControllerController < ApplicationController
  def initialize
    @tc = TestCase.find(2)
    @tcr = TestCaseResult.create()
  end
  
  def do_it
    TestCaseWorker.perform_async(2,@tcr.id, 2 )
  end
end
