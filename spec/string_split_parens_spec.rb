#! /usr/bin/env ruby
# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_split_parens.rb'

#class String
#  public :open_paren?, :close_paren?
#end

describe String, "" do
  describe "many parens" do
    before do
      @s00 = "(ab)(cd(ef))gh(ij)kl(mn)"
      @s01 = "((ab)(cd(ef))gh(ij)kl(mn)" # open  paren excess.
      @s02 = "(ab)(cd(ef)))gh(ij)kl(mn)" # close paren excess.
    end

    it "" do
      @s00.split_parens.should == ["(ab)", "(cd(ef))", "gh", "(ij)", "kl", "(mn)"]
      @s01.split_parens.should == ["((ab)(cd(ef))gh(ij)kl(mn)"]
      @s02.split_parens.should == ["(ab)", "(cd(ef))", ")gh(ij)kl(mn)"]
    end
  end

  describe "single char" do
    it do
      '(' .close_paren?.should == false
      '(' .open_paren?.should == true

      ')' .close_paren?.should == true
      ')' .open_paren?.should == false

      '<' .close_paren?.should == false
      '<' .open_paren?.should == true

      '>' .close_paren?.should == true
      '>' .open_paren?.should == false

      '[' .close_paren?.should == false
      '[' .open_paren?.should == true

      ']' .close_paren?.should == true
      ']' .open_paren?.should == false

      '{' .close_paren?.should == false
      '{' .open_paren?.should == true

      '}' .close_paren?.should == true
      '}' .open_paren?.should == false

      '（'.close_paren?.should == false
      '（'.open_paren?.should == true

      '）'.close_paren?.should == true
      '）'.open_paren?.should == false

      '〔'.close_paren?.should == false
      '〔'.open_paren?.should == true

      '〕'.close_paren?.should == true
      '〕'.open_paren?.should == false

      '［'.close_paren?.should == false
      '［'.open_paren?.should == true

      '］'.close_paren?.should == true
      '］'.open_paren?.should == false

      '｛'.close_paren?.should == false
      '｛'.open_paren?.should == true

      '｝'.close_paren?.should == true
      '｝'.open_paren?.should == false

      '〈'.close_paren?.should == false
      '〈'.open_paren?.should == true

      '〉'.close_paren?.should == true
      '〉'.open_paren?.should == false

      '《'.close_paren?.should == false
      '《'.open_paren?.should == true

      '》'.close_paren?.should == true
      '》'.open_paren?.should == false

      '「'.close_paren?.should == false
      '「'.open_paren?.should == true

      '」'.close_paren?.should == true
      '」'.open_paren?.should == false

      '『'.close_paren?.should == false
      '『'.open_paren?.should == true

      '』'.close_paren?.should == true
      '』'.open_paren?.should == false

      '【'.close_paren?.should == false
      '【'.open_paren?.should == true

      '】'.close_paren?.should == true
      '】'.open_paren?.should == false

      '＜'.close_paren?.should == false
      '＜'.open_paren?.should == true

      '＞'.close_paren?.should == true
      '＞'.open_paren?.should == false

      '(('.open_paren?.should == false
      '))'.open_paren?.should == false

      '({'.open_paren?.should == false
      ')}'.open_paren?.should == false

    end
  end



end
