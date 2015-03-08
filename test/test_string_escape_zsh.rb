#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"
require "string/escapezsh.rb"

#describe String, "with chars to be escaped" do
class TC_String_escapezsh < Test::Unit::TestCase
  def setup
    @s00 = "0123456789abcdefghijklmnopqrstuvwxyz"
    @s10 = "\\abc\\"
    @s11 = '/abc/'
    @s12 = ' abc '
    @s13 = '!abc!'
    @s14 = '"abc"'
    @s15 = '#abc#'
    @s16 = '$abc$'
    @s17 = '%abc%'
    @s18 = ')abc)'
    @s19 = '(abc('
    @s20 = '*abc*'
    @s21 = ',abc,'
    @s22 = '-abc-'
    @s23 = '.abc.'
    @s24 = ':abc:'
    @s25 = ';abc;'
    @s26 = '<abc<'
    @s27 = '=abc='
    @s28 = '>abc>'
    @s29 = '?abc?'
    @s30 = '@abc@'
    @s31 = '[abc['
    @s32 = ']abc]'
    @s33 = '^abc^'
    @s34 = '_abc_'
    @s35 = '{abc{'
    @s36 = '|abc|'
    @s37 = '}abc}'
    @s38 = '~abc~'
    @s39 = '`abc`'
    @s40 = '&abc&'
    @s41 = '+abc+'
    @s42 = "'abc'"
  end

  def test_escape_zsh
    #it "should not escape" do
    assert_equal("0123456789abcdefghijklmnopqrstuvwxyz", @s00.escape_zsh)

    #it "should escape" do
    assert_equal("\\\\abc\\\\", @s10.escape_zsh)
    assert_equal("/abc/"      , @s11.escape_zsh)
    assert_equal("\\ abc\\ "  , @s12.escape_zsh)
    assert_equal("\\!abc\\!"  , @s13.escape_zsh)
    assert_equal('\\"abc\\"'  , @s14.escape_zsh)
    assert_equal("\\#abc\\#"  , @s15.escape_zsh)
    assert_equal("\\$abc\\$"  , @s16.escape_zsh)
    assert_equal("\\%abc\\%"  , @s17.escape_zsh)
    assert_equal("\\)abc\\)"  , @s18.escape_zsh)
    assert_equal("\\(abc\\("  , @s19.escape_zsh)
    assert_equal("\\*abc\\*"  , @s20.escape_zsh)
    assert_equal("\\,abc\\,"  , @s21.escape_zsh)
    assert_equal("-abc-"      , @s22.escape_zsh)
    assert_equal(".abc."      , @s23.escape_zsh)
    assert_equal("\\:abc\\:"  , @s24.escape_zsh)
    assert_equal("\\;abc\\;"  , @s25.escape_zsh)
    assert_equal("\\<abc\\<"  , @s26.escape_zsh)
    assert_equal("\\=abc\\="  , @s27.escape_zsh)
    assert_equal("\\>abc\\>"  , @s28.escape_zsh)
    assert_equal("\\?abc\\?"  , @s29.escape_zsh)
    assert_equal("\\@abc\\@"  , @s30.escape_zsh)
    assert_equal("\\[abc\\["  , @s31.escape_zsh)
    assert_equal("\\]abc\\]"  , @s32.escape_zsh)
    assert_equal("\\^abc\\^"  , @s33.escape_zsh)
    assert_equal("\\_abc\\_"  , @s34.escape_zsh)
    assert_equal("\\{abc\\{"  , @s35.escape_zsh)
    assert_equal("\\|abc\\|"  , @s36.escape_zsh)
    assert_equal("\\}abc\\}"  , @s37.escape_zsh)
    assert_equal("\\~abc\\~"  , @s38.escape_zsh)
    assert_equal("\\`abc\\`"  , @s39.escape_zsh)
    assert_equal("\\&abc\\&"  , @s40.escape_zsh)
    assert_equal("\\+abc\\+"  , @s41.escape_zsh)
    assert_equal("\\'abc\\'"  , @s42.escape_zsh)
  end

end
