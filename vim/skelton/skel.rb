#!/usr/bin/env ruby
require 'pp'

class Foo
  def bar
    return true
  end
end

if __FILE__ == $0
  require 'minitest/unit'
  MiniTest::Unit.autorun

  class TC_Foo < MiniTest::Unit::TestCase
    def setup
      @obj = Foo.new
    end

    def test_bar
      assert_equal(true, @obj.bar)
    end
  end
end

