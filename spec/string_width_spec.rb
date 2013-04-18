#! /usr/bin/env ruby
# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require "string/width.rb"

describe String, "for width in displayed terminal" do
  it do
    "abc".width       .should == 3
    "あいう".width    .should == 6
    "あaいbうc".width .should == 9
    "’".width         .should == 1
    "”".width         .should == 1
  end

end

