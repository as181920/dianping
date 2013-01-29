# encoding: utf-8
require 'minitest/autorun'
require 'dianping'

class TestDianPing < MiniTest::Unit::TestCase
  def test_hello
    assert_equal "hello world", DianPing.hi
  end
end

describe DianPing do
  before  do
    @a = "a"
  end

  describe "just test" do
    it "must with instance var a" do
      @a.must_equal "a"
    end
  end
end
