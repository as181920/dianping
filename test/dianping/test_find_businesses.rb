# encoding: utf-8
require 'minitest/autorun'
require 'dianping'

describe DianPing do
  before  do
    @client = DianPing::Client.new
  end

  describe "find by city" do
    it "can find some businesses " do
      businesses = @client.find_businesses
      businesses.must_be_kind_of Array
      businesses.wont_be_empty
    end
  end
end
