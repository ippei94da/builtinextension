#! /usr/bin/env ruby
# coding: utf-8

#
#
#
class Array
	# 通常の include? は == で判定するが、
	# これではなく eql? を使って判定するようにしたもの。
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

