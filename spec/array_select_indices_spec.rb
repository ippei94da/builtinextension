#! /usr/bin/env ruby
# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require "array_select_indices.rb"


describe Array, "including items" do

	it "should do for empty array." do
		[].select_indices{ false }              .should == []
		[].select_indices{ true }               .should == []
	end

	it "should do for array of String." do
		%w[ a b c  ].select_indices{ false }    .should == []
		%w[ a b c  ].select_indices{ true }     .should == [0,1,2]
	end

	it "should do for empty array of Integer." do
		[0,1,2,3].select_indices{ false }       .should == []
		[0,1,2,3].select_indices{ true }        .should == [0,1,2,3]
		[0,1,2,3].select_indices{ |i| i < 2 }   .should == [0,1]
	end

end

