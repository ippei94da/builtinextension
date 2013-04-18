#! /usr/bin/env ruby
# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require "string/escapezsh.rb"

describe String, "with chars to be escaped" do
  before do
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

  it "should not escape" do
    @s00.escape_zsh.should == "0123456789abcdefghijklmnopqrstuvwxyz"
  end

  it "should escape" do
    @s10.escape_zsh.should == "\\\\abc\\\\"
    @s11.escape_zsh.should == "/abc/"      
    @s12.escape_zsh.should == "\\ abc\\ "  
    @s13.escape_zsh.should == "\\!abc\\!"  
    @s14.escape_zsh.should == '\\"abc\\"'  
    @s15.escape_zsh.should == "\\#abc\\#"  
    @s16.escape_zsh.should == "\\$abc\\$"  
    @s17.escape_zsh.should == "\\%abc\\%"  
    @s18.escape_zsh.should == "\\)abc\\)"  
    @s19.escape_zsh.should == "\\(abc\\("  
    @s20.escape_zsh.should == "\\*abc\\*"  
    @s21.escape_zsh.should == "\\,abc\\,"  
    @s22.escape_zsh.should == "-abc-"      
    @s23.escape_zsh.should == ".abc."      
    @s24.escape_zsh.should == "\\:abc\\:"  
    @s25.escape_zsh.should == "\\;abc\\;"  
    @s26.escape_zsh.should == "\\<abc\\<"  
    @s27.escape_zsh.should == "\\=abc\\="  
    @s28.escape_zsh.should == "\\>abc\\>"  
    @s29.escape_zsh.should == "\\?abc\\?"  
    @s30.escape_zsh.should == "\\@abc\\@"  
    @s31.escape_zsh.should == "\\[abc\\["  
    @s32.escape_zsh.should == "\\]abc\\]"  
    @s33.escape_zsh.should == "\\^abc\\^"  
    @s34.escape_zsh.should == "\\_abc\\_"  
    @s35.escape_zsh.should == "\\{abc\\{"  
    @s36.escape_zsh.should == "\\|abc\\|"  
    @s37.escape_zsh.should == "\\}abc\\}"  
    @s38.escape_zsh.should == "\\~abc\\~"  
    @s39.escape_zsh.should == "\\`abc\\`"  
    @s40.escape_zsh.should == "\\&abc\\&"  
    @s41.escape_zsh.should == "\\+abc\\+"  
    @s42.escape_zsh.should == "\\'abc\\'"  
  end

end
