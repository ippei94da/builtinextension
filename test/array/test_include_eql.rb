#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"

require "array/includeeql"

class Klass
  def initialize(val)
    @val = (val)
  end

  def eql?(other)
    return @val.floor == other.floor
  end
end


#describe Array, "including items with eql? method" do
#class TC_Array < Test::Unit::TestCase
class TC_Array_include_eql < Test::Unit::TestCase
  def setup
    @a00 = [
      Klass.new(0.0),
      Klass.new(1.0),
      Klass.new(2.0),
    ]
  end

  def test_include_eql?
    #it "should be true" do
    assert_equal(true, @a00.include_eql?( 0.1))
    assert_equal(true, @a00.include_eql?( 1.1))
    assert_equal(true, @a00.include_eql?( 2.1))

    #it "should be false" do
    assert_equal(false, @a00.include_eql?( 3.1))
    assert_equal(false, @a00.include_eql?(-0.9))
  end

end

