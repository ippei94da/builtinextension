#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"
require "string/width.rb"

class TC_String_width < Test::Unit::TestCase
#describe String, "for width in displayed terminal" do
    def test_width
        assert_equal( 3, "abc".width       )
        assert_equal( 6, "あいう".width    )
        assert_equal( 9, "あaいbうc".width )
        assert_equal( 1, "’".width         )
        assert_equal( 1, "”".width         )
    end

end

