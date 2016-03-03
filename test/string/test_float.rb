#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"
require "string/float"

class TC_String_Float < Test::Unit::TestCase
  def test_float?
    assert_equal(false, String.float?("あいうえお"))
    assert_equal(true , String.float?("123"       ))
    assert_equal(true , String.float?("3.14"      ))
    assert_equal(false, String.float?("１２３４５"))

    assert_equal(false, "あいうえお".float?)
    assert_equal(true , "123"       .float?)
    assert_equal(true , "3.14"      .float?)
    assert_equal(false, "１２３４５".float?)
  end

end

