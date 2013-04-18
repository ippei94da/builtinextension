#! /usr/bin/env ruby
# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require "array/includeeql.rb"

class Klass
  def initialize(val)
    @val = (val)
  end

  def eql?(other)
    return @val.floor == other.floor
  end
end


describe Array, "including items with eql? method" do
#class TC_Array < Test::Unit::TestCase
  before do
    @a00 = [
      Klass.new(0.0),
      Klass.new(1.0),
      Klass.new(2.0),
    ]
  end

  it "should be true" do
    @a00.include_eql?( 0.1).should be_true 
    @a00.include_eql?( 1.1).should be_true 
    @a00.include_eql?( 2.1).should be_true 
  end

  it "should be false" do
    @a00.include_eql?( 3.1).should be_false
    @a00.include_eql?(-0.9).should be_false
  end

end

