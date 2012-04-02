#! /usr/bin/env ruby
# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'string_mismatch.rb'


describe String, "for mismatch check" do
  before do
    @s00 = 'abcdefghij'
    @s01 = 'あいうえお'
  end

  it "should be indicated first mismatch char index" do
    @s00.mismatch( "abcdefghij" )     .should == nil
    @s00.mismatch( "_bcdefghij" )     .should ==  0 
    @s00.mismatch( "abcd_fghij" )     .should ==  4 
    @s00.mismatch( "abcdefghijk" )    .should == 10 
    @s00.mismatch( "abc" )            .should ==  3 

    @s01.mismatch( "あいうえお" )     .should == nil
    @s01.mismatch( "_いうえお" )      .should ==  0 
    @s01.mismatch( "あいうえ_" )      .should ==  4 
    @s01.mismatch( "あいうえおか" )   .should ==  5 
    @s01.mismatch( "あいう" )         .should ==  3 
  end

end

