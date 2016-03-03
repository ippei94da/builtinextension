#! /usr/bin/env ruby
# coding: utf-8

require "helper"
require "float/equalindelta.rb"
#require "test/unit"
#require "pkg/klass.rb"

class TC_Float < Test::Unit::TestCase
  def test_equal_in_delta?
    assert_equal(true , (1.0).equal_in_delta?(1.0, 0.1))
    assert_equal(false, (1.0).equal_in_delta?(1.2, 0.1))
    assert_equal(true , (1.0).equal_in_delta?(1.2, 0.3))
    assert_equal(false, (1.2).equal_in_delta?(1.0, 0.1))
    assert_equal(true , (1.2).equal_in_delta?(1.0, 0.3))
  end

end

