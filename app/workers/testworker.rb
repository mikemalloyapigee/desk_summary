class TestWorker
  include Sidekiq::Worker
  def initialize
    @Mike = "Mike"
  end
  def perform(num)
    puts (num*2).to_s
  end
end