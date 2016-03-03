#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"
require "string/integer"

class TC_String_Integer < Test::Unit::TestCase
  def test_integer?
    assert_equal(false, String.integer?("あいうえお"))
    assert_equal(true , String.integer?("123"       ))
    assert_equal(false, String.integer?("3.14"      ))
    assert_equal(false, String.integer?("１２３４５"))

    assert_equal(false, "あいうえお".integer?)
    assert_equal(true , "123"       .integer?)
    assert_equal(false, "3.14"      .integer?)
    assert_equal(false, "１２３４５".integer?)
  end

end

