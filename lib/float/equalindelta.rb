#! /usr/bin/env ruby
# coding: utf-8

class Float
  # return true if absolute value of the difference
  # between self and other is smaller than delta.
  def equal_in_delta?(other, delta)
    (self - other).abs < delta
  end

end


