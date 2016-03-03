#! /usr/bin/env ruby
# coding: utf-8

class String
  # http://taro-tnk.hatenablog.com/entry/2012/12/17/001552

  # Return true if the 'str' express integer, else return false.
  def self.integer?(str)
    begin
      Integer(str)
      true
    rescue ArgumentError
      false
    end
  end

  # Return true if the 'str' express integer, else return false.
  def integer?
    self.class.integer?(self)
  end
end

