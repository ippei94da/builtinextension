#! /usr/bin/env ruby
# coding: utf-8

class String
	
	#self と str を比較して、最初に異なったインデックスを返す。
	#self のサイズ以上のインデックスが返ることがある。e.g.,
	#	"abc".mismatch( "abcd" ) #=> 3
	#
	#完全に一致していれば nil を返す。
	def mismatch( str )
		ary1 = self.split( // )
		ary2 = str.split( // )
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
