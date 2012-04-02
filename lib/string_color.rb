#! /usr/bin/env ruby
# coding: utf-8

class String
  COLOR_CODE = {
    :black   => 0, :red     => 1, :green   => 2, :yellow  => 3,
    :blue    => 4, :magenta => 5, :cyan    => 6, :white   => 7,
    :default => 9,
  }

  #Add escape characters at head and tail of self.
  #Foreground and background can be indicated by argued symbols.
  #	0: black
  #	1: red
  #	2: green
  #	3: yellow
  #	4: blue
  #	5: magenta
  #	6: cyan
  #	7: white
  #	9: default
  # Argument bg indicates background color. If not indicated, default color.
  # Argument fg indicates foreground color. This must be indicated.
  def color( fg, bg = :default )
    "\e[3#{COLOR_CODE[ fg ]};4#{COLOR_CODE[ bg ]}m" + self + "\e[39;49m"
  end

end

