# encoding: utf-8
require 'minitest/autorun'
require 'dianping'

describe DianPing do
  before  do
    @client = DianPing::Client.new
  end

  describe "find by city" do
    it "can find some businesses in shanghai" do
      businesses = @client.find_businesses({city: '上海'})
      businesses.must_be_kind_of Array
      businesses.wont_be_empty
    end

    it "can find businesses in shanghai with limited count" do
      businesses = @client.find_businesses({city: '上海', limit: 10})
      businesses.must_be_kind_of Array
      businesses.length.must_equal 10
    end
  end
end
