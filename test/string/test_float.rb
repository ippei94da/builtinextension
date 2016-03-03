#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"

class TC_String_Float < Test::Unit::TestCase
  def test_float?
    asset_equal(false, String.float?("あいうえお"))
    asset_equal(true , String.float?("123"       ))
    asset_equal(true , String.float?("3.14"      ))
    asset_equal(false, String.float?("１２３４５"))

    asset_equal(false, "あいうえお".float?)
    asset_equal(true , "123"       .float?)
    asset_equal(true , "3.14"      .float?)
    asset_equal(false, "１２３４５".float?)
  end

end

