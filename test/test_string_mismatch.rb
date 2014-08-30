#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"
require "string/mismatch.rb"

#describe String, "for mismatch check" do
class TC_String_mismatch < Test::Unit::TestCase
    def setup
        @s00 = 'abcdefghij'
        @s01 = 'あいうえお'
    end

    #it "should be indicated first mismatch char index" do
    def test_mismatch
        assert_equal(nil, @s00.mismatch( "abcdefghij" )   )
        assert_equal( 0 , @s00.mismatch( "_bcdefghij" )   )
        assert_equal( 4 , @s00.mismatch( "abcd_fghij" )   )
        assert_equal(10 , @s00.mismatch( "abcdefghijk" )  )
        assert_equal( 3 , @s00.mismatch( "abc" )          )

        assert_equal(nil, @s01.mismatch( "あいうえお" )   )
        assert_equal( 0 , @s01.mismatch( "_いうえお" )    )
        assert_equal( 4 , @s01.mismatch( "あいうえ_" )    )
        assert_equal( 5 , @s01.mismatch( "あいうえおか" ) )
        assert_equal( 3 , @s01.mismatch( "あいう" )       )
    end

end

