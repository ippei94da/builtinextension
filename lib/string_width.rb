#! /usr/bin/env ruby
# coding: utf-8

class String
	# 端末で表示されるときの文字幅。
	# 端末ごとの細かい制御とかは対応していない。
	# UTF-8 の ambiguous width 対応の対応は必要に応じて足していく。
	def width
		chars = ' -~' + '’”' #1文字幅の文字
		num_ascii = count(chars)
		num_wide = size - num_ascii
		return 2 * num_wide + num_ascii
	end

end

