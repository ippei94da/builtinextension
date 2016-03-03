#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"

class TC_String_Integer < Test::Unit::TestCase
  def test_integer?
    asset_equal(false, String.integer?("あいうえお"))
    asset_equal(true , String.integer?("123"       ))
    asset_equal(false, String.integer?("3.14"      ))
    asset_equal(false, String.integer?("１２３４５"))

    asset_equal(false, "あいうえお".integer?)
    asset_equal(true , "123"       .integer?)
    asset_equal(false, "3.14"      .integer?)
    asset_equal(false, "１２３４５".integer?)
  end

end

