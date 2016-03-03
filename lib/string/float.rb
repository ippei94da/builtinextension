#! /usr/bin/env ruby
# coding: utf-8

class String
  # http://taro-tnk.hatenablog.com/entry/2012/12/17/001552

  # Return true if the 'str' express float, else return false.
  def self.float?(str)
    begin
      Float(str)
      true
    rescue ArgumentError
      false
    end
  end

  # Return true if the 'str' express float, else return false.
  def float?
    self.class.float?(self)
  end
end

