#! /usr/bin/env ruby
# coding: utf-8

class String

  # Return the first index that meet mismatch between self and other String.
  # Return nil if self == other.
  #
  # Note that this method may return an index more than self.size.
  # e.g., "abc".mismatch( "abcd" ) #=> 3
  def mismatch( other )
    ary1 = self.split( // )
    ary2 = other.split( // )
    index = nil
    [ ary1.size, ary2.size ].max.times do |i|
      if ( ary1[i] != ary2[i] )
        index = i
        break
      end
    end
    index
  end
end
