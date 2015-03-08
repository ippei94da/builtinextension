#! /usr/bin/env ruby
# coding: utf-8


require 'helper'
require "test/unit"

require "array/selectindices.rb"

#describe Array, "including items" do

class TC_Array_select_indices < Test::Unit::TestCase
  #it "should do for empty array." do
  def test_select_indices
    assert_equal([], [].select_indices{ false })
    assert_equal([], [].select_indices{ true } )

    #it "should do for array of String." do
    assert_equal([]       , %w[ a b c    ].select_indices{ false } )
    assert_equal([0,1,2]  , %w[ a b c    ].select_indices{ true }  )

    #it "should do for empty array of Integer." do
    assert_equal([]         , [0,1,2,3].select_indices{ false }     )
    assert_equal([0,1,2,3]  , [0,1,2,3].select_indices{ true }      )
    assert_equal([0,1]      , [0,1,2,3].select_indices{ |i| i < 2 } )
  end

end

