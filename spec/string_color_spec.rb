#! /usr/bin/env ruby
# coding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'string_color.rb'


describe String, "to be added color information" do
	before do
		@s00 = ""
		@s01 = "abc"
	end

	it "should be sandwitched escape chars of color" do
		@s00.color( :black   )           .should == "\e[30;49m\e[39;49m"
		@s00.color( :red     )           .should == "\e[31;49m\e[39;49m"
		@s00.color( :green   )           .should == "\e[32;49m\e[39;49m"
		@s00.color( :yellow  )           .should == "\e[33;49m\e[39;49m"
		@s00.color( :blue    )           .should == "\e[34;49m\e[39;49m"
		@s00.color( :magenta )           .should == "\e[35;49m\e[39;49m"
		@s00.color( :cyan    )           .should == "\e[36;49m\e[39;49m"
		@s00.color( :white   )           .should == "\e[37;49m\e[39;49m"
		@s00.color( :default )           .should == "\e[39;49m\e[39;49m"
		@s00.color( :default, :black   ) .should == "\e[39;40m\e[39;49m"
		@s00.color( :default, :red     ) .should == "\e[39;41m\e[39;49m"
		@s00.color( :default, :green   ) .should == "\e[39;42m\e[39;49m"
		@s00.color( :default, :yellow  ) .should == "\e[39;43m\e[39;49m"
		@s00.color( :default, :blue    ) .should == "\e[39;44m\e[39;49m"
		@s00.color( :default, :magenta ) .should == "\e[39;45m\e[39;49m"
		@s00.color( :default, :cyan    ) .should == "\e[39;46m\e[39;49m"
		@s00.color( :default, :white   ) .should == "\e[39;47m\e[39;49m"
		@s00.color( :default, :default ) .should == "\e[39;49m\e[39;49m"
		@s00.color( :white  , :black   ) .should == "\e[37;40m\e[39;49m"
		@s00.color( :cyan   , :red     ) .should == "\e[36;41m\e[39;49m"
		@s00.color( :magenta, :green   ) .should == "\e[35;42m\e[39;49m"
		@s00.color( :blue   , :yellow  ) .should == "\e[34;43m\e[39;49m"
		@s00.color( :yellow , :blue    ) .should == "\e[33;44m\e[39;49m"
		@s00.color( :green  , :magenta ) .should == "\e[32;45m\e[39;49m"
		@s00.color( :red    , :cyan    ) .should == "\e[31;46m\e[39;49m"
		@s00.color( :black  , :white   ) .should == "\e[30;47m\e[39;49m"
		@s01.color( :black   )           .should == "\e[30;49mabc\e[39;49m"
		@s01.color( :red     )           .should == "\e[31;49mabc\e[39;49m"
		@s01.color( :green   )           .should == "\e[32;49mabc\e[39;49m"
		@s01.color( :yellow  )           .should == "\e[33;49mabc\e[39;49m"
		@s01.color( :blue    )           .should == "\e[34;49mabc\e[39;49m"
		@s01.color( :magenta )           .should == "\e[35;49mabc\e[39;49m"
		@s01.color( :cyan    )           .should == "\e[36;49mabc\e[39;49m"
		@s01.color( :white   )           .should == "\e[37;49mabc\e[39;49m"
		@s01.color( :default )           .should == "\e[39;49mabc\e[39;49m"
		@s01.color( :default, :black   ) .should == "\e[39;40mabc\e[39;49m"
		@s01.color( :default, :red     ) .should == "\e[39;41mabc\e[39;49m"
		@s01.color( :default, :green   ) .should == "\e[39;42mabc\e[39;49m"
		@s01.color( :default, :yellow  ) .should == "\e[39;43mabc\e[39;49m"
		@s01.color( :default, :blue    ) .should == "\e[39;44mabc\e[39;49m"
		@s01.color( :default, :magenta ) .should == "\e[39;45mabc\e[39;49m"
		@s01.color( :default, :cyan    ) .should == "\e[39;46mabc\e[39;49m"
		@s01.color( :default, :white   ) .should == "\e[39;47mabc\e[39;49m"
		@s01.color( :default, :default ) .should == "\e[39;49mabc\e[39;49m"
		@s01.color( :white  , :black   ) .should == "\e[37;40mabc\e[39;49m"
		@s01.color( :cyan   , :red     ) .should == "\e[36;41mabc\e[39;49m"
		@s01.color( :magenta, :green   ) .should == "\e[35;42mabc\e[39;49m"
		@s01.color( :blue   , :yellow  ) .should == "\e[34;43mabc\e[39;49m"
		@s01.color( :yellow , :blue    ) .should == "\e[33;44mabc\e[39;49m"
		@s01.color( :green  , :magenta ) .should == "\e[32;45mabc\e[39;49m"
		@s01.color( :red    , :cyan    ) .should == "\e[31;46mabc\e[39;49m"
		@s01.color( :black  , :white   ) .should == "\e[30;47mabc\e[39;49m"
	end

end
