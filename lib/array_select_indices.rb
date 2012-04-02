#! /usr/bin/env ruby
# coding: utf-8

#
#
#
class Array
	# 受け取ったブロックが true を返す要素のインデックスをソート済配列にして返す。
	def select_indices
		results = []
		each_with_index { |item, index|
			results << index if yield(item)
		}
		return results
	end

end

