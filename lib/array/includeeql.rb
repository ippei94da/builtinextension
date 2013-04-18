#! /usr/bin/env ruby
# coding: utf-8

#
#
#
class Array
  # Whereas normal include? uses == method,
  # this method uses eql? alternatively.
  def include_eql?(other)
    result = false
    each do |i|
      if i.eql?(other)
        result ||= true
        break
      end
    end
    return result
  end

end

