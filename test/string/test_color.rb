#! /usr/bin/env ruby
# coding: utf-8

require 'helper'
require "test/unit"
require "string/color.rb"

#describe String, "to be added color information" do
class TC_String_color < Test::Unit::TestCase
  def setup
    @s00 = ""
    @s01 = "abc"
  end

  #it "should be sandwitched escape chars of color" do
  def test_color
    assert_equal("\e[30;49m\e[39;49m"   , @s00.color( :black            ))
    assert_equal("\e[31;49m\e[39;49m"   , @s00.color( :red              ))
    assert_equal("\e[32;49m\e[39;49m"   , @s00.color( :green            ))
    assert_equal("\e[33;49m\e[39;49m"   , @s00.color( :yellow           ))
    assert_equal("\e[34;49m\e[39;49m"   , @s00.color( :blue             ))
    assert_equal("\e[35;49m\e[39;49m"   , @s00.color( :magenta          ))
    assert_equal("\e[36;49m\e[39;49m"   , @s00.color( :cyan             ))
    assert_equal("\e[37;49m\e[39;49m"   , @s00.color( :white            ))
    assert_equal("\e[39;49m\e[39;49m"   , @s00.color( :default          ))
    assert_equal("\e[39;40m\e[39;49m"   , @s00.color( :default, :black  ))
    assert_equal("\e[39;41m\e[39;49m"   , @s00.color( :default, :red    ))
    assert_equal("\e[39;42m\e[39;49m"   , @s00.color( :default, :green  ))
    assert_equal("\e[39;43m\e[39;49m"   , @s00.color( :default, :yellow ))
    assert_equal("\e[39;44m\e[39;49m"   , @s00.color( :default, :blue   ))
    assert_equal("\e[39;45m\e[39;49m"   , @s00.color( :default, :magenta))
    assert_equal("\e[39;46m\e[39;49m"   , @s00.color( :default, :cyan   ))
    assert_equal("\e[39;47m\e[39;49m"   , @s00.color( :default, :white  ))
    assert_equal("\e[39;49m\e[39;49m"   , @s00.color( :default, :default))
    assert_equal("\e[37;40m\e[39;49m"   , @s00.color( :white  , :black  ))
    assert_equal("\e[36;41m\e[39;49m"   , @s00.color( :cyan   , :red    ))
    assert_equal("\e[35;42m\e[39;49m"   , @s00.color( :magenta, :green  ))
    assert_equal("\e[34;43m\e[39;49m"   , @s00.color( :blue   , :yellow ))
    assert_equal("\e[33;44m\e[39;49m"   , @s00.color( :yellow , :blue   ))
    assert_equal("\e[32;45m\e[39;49m"   , @s00.color( :green  , :magenta))
    assert_equal("\e[31;46m\e[39;49m"   , @s00.color( :red    , :cyan   ))
    assert_equal("\e[30;47m\e[39;49m"   , @s00.color( :black  , :white  ))
    assert_equal("\e[30;49mabc\e[39;49m", @s01.color( :black            ))
    assert_equal("\e[31;49mabc\e[39;49m", @s01.color( :red              ))
    assert_equal("\e[32;49mabc\e[39;49m", @s01.color( :green            ))
    assert_equal("\e[33;49mabc\e[39;49m", @s01.color( :yellow           ))
    assert_equal("\e[34;49mabc\e[39;49m", @s01.color( :blue             ))
    assert_equal("\e[35;49mabc\e[39;49m", @s01.color( :magenta          ))
    assert_equal("\e[36;49mabc\e[39;49m", @s01.color( :cyan             ))
    assert_equal("\e[37;49mabc\e[39;49m", @s01.color( :white            ))
    assert_equal("\e[39;49mabc\e[39;49m", @s01.color( :default          ))
    assert_equal("\e[39;40mabc\e[39;49m", @s01.color( :default, :black  ))
    assert_equal("\e[39;41mabc\e[39;49m", @s01.color( :default, :red    ))
    assert_equal("\e[39;42mabc\e[39;49m", @s01.color( :default, :green  ))
    assert_equal("\e[39;43mabc\e[39;49m", @s01.color( :default, :yellow ))
    assert_equal("\e[39;44mabc\e[39;49m", @s01.color( :default, :blue   ))
    assert_equal("\e[39;45mabc\e[39;49m", @s01.color( :default, :magenta))
    assert_equal("\e[39;46mabc\e[39;49m", @s01.color( :default, :cyan   ))
    assert_equal("\e[39;47mabc\e[39;49m", @s01.color( :default, :white  ))
    assert_equal("\e[39;49mabc\e[39;49m", @s01.color( :default, :default))
    assert_equal("\e[37;40mabc\e[39;49m", @s01.color( :white  , :black  ))
    assert_equal("\e[36;41mabc\e[39;49m", @s01.color( :cyan   , :red    ))
    assert_equal("\e[35;42mabc\e[39;49m", @s01.color( :magenta, :green  ))
    assert_equal("\e[34;43mabc\e[39;49m", @s01.color( :blue   , :yellow ))
    assert_equal("\e[33;44mabc\e[39;49m", @s01.color( :yellow , :blue   ))
    assert_equal("\e[32;45mabc\e[39;49m", @s01.color( :green  , :magenta))
    assert_equal("\e[31;46mabc\e[39;49m", @s01.color( :red    , :cyan   ))
    assert_equal("\e[30;47mabc\e[39;49m", @s01.color( :black  , :white  ))
  end

end
