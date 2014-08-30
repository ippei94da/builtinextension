#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"
require "string/splitparens.rb"

#describe String, "" do
class TC_String_splitparens < Test::Unit::TestCase

    def setup
        @s00 = "(ab)(cd(ef))gh(ij)kl(mn)"
        @s01 = "((ab)(cd(ef))gh(ij)kl(mn)" # open    paren excess.
        @s02 = "(ab)(cd(ef)))gh(ij)kl(mn)" # close paren excess.
    end

    def test_split_parens
        #describe "many parens" do
        assert_equal(["(ab)", "(cd(ef))", "gh", "(ij)", "kl", "(mn)"],
                     @s00.split_parens)
        assert_equal(["((ab)(cd(ef))gh(ij)kl(mn)"]                   ,
                     @s01.split_parens)
        assert_equal(["(ab)", "(cd(ef))", ")gh(ij)kl(mn)"]           ,
                     @s02.split_parens)
    end

    def test_open_close
        #describe "single char" do
        assert_equal( false, '(' .close_paren?)
        assert_equal( true , '(' .open_paren? )
        assert_equal( true , ')' .close_paren?)
        assert_equal( false, ')' .open_paren? )
        assert_equal( false, '<' .close_paren?)
        assert_equal( true , '<' .open_paren? )
        assert_equal( true , '>' .close_paren?)
        assert_equal( false, '>' .open_paren? )
        assert_equal( false, '[' .close_paren?)
        assert_equal( true , '[' .open_paren? )
        assert_equal( true , ']' .close_paren?)
        assert_equal( false, ']' .open_paren? )
        assert_equal( false, '{' .close_paren?)
        assert_equal( true , '{' .open_paren? )
        assert_equal( true , '}' .close_paren?)
        assert_equal( false, '}' .open_paren? )
        assert_equal( false, '（'.close_paren?)
        assert_equal( true , '（'.open_paren? )
        assert_equal( true , '）'.close_paren?)
        assert_equal( false, '）'.open_paren? )
        assert_equal( false, '〔'.close_paren?)
        assert_equal( true , '〔'.open_paren? )
        assert_equal( true , '〕'.close_paren?)
        assert_equal( false, '〕'.open_paren? )
        assert_equal( false, '［'.close_paren?)
        assert_equal( true , '［'.open_paren? )
        assert_equal( true , '］'.close_paren?)
        assert_equal( false, '］'.open_paren? )
        assert_equal( false, '｛'.close_paren?)
        assert_equal( true , '｛'.open_paren? )
        assert_equal( true , '｝'.close_paren?)
        assert_equal( false, '｝'.open_paren? )
        assert_equal( false, '〈'.close_paren?)
        assert_equal( true , '〈'.open_paren? )
        assert_equal( true , '〉'.close_paren?)
        assert_equal( false, '〉'.open_paren? )
        assert_equal( false, '《'.close_paren?)
        assert_equal( true , '《'.open_paren? )
        assert_equal( true , '》'.close_paren?)
        assert_equal( false, '》'.open_paren? )
        assert_equal( false, '「'.close_paren?)
        assert_equal( true , '「'.open_paren? )
        assert_equal( true , '」'.close_paren?)
        assert_equal( false, '」'.open_paren? )
        assert_equal( false, '『'.close_paren?)
        assert_equal( true , '『'.open_paren? )
        assert_equal( true , '』'.close_paren?)
        assert_equal( false, '』'.open_paren? )
        assert_equal( false, '【'.close_paren?)
        assert_equal( true , '【'.open_paren? )
        assert_equal( true , '】'.close_paren?)
        assert_equal( false, '】'.open_paren? )
        assert_equal( false, '＜'.close_paren?)
        assert_equal( true , '＜'.open_paren? )
        assert_equal( true , '＞'.close_paren?)
        assert_equal( false, '＞'.open_paren? )
        assert_equal( false, '(('.open_paren? )
        assert_equal( false, '))'.open_paren? )
        assert_equal( false, '({'.open_paren? )
        assert_equal( false, ')}'.open_paren? )
    end
end
