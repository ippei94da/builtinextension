#! /usr/bin/env ruby
# coding: utf-8

class String
  # Return character width in rxvt-unicode.
  def width
    chars = ' -~' + '’”' # width of one alphabetic char.
    num_ascii = count(chars)
    num_wide = size - num_ascii
    return 2 * num_wide + num_ascii
  end

end

