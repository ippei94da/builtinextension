#! /usr/bin/env ruby
# coding: utf-8

#
#
#
class Array
  # Return sorted array of indices which a block returns true.
  def select_indices
    results = []
    each_with_index { |item, index|
      results << index if yield(item)
    }
    return results
  end

end

