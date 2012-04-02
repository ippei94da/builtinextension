#! /usr/bin/env ruby
# coding: utf-8

#文字列の前後にエスケープシーケンスを加えて表示色などを変更する。
#部分的に変更とかややこしい機能はつけず、
#単純に self 全体の色を変更する。
#
#以下はボツ案。
#	文字列に表示色情報を加えたクラスを用意すべきか。
#	表示色は出力デバイス依存なので、String クラスに直接入れるべきではないとは思う。
#	また、文字の境界にエスケープシーケンスが入ることでパターンマッチに障害が生じる。
#	しかし文字列に色をつけるのは殆どの場合表示直前の最終工程なので問題になることは少ないだろう。
#
#	#"[31m" + i + "[39m" }
#	#^[[35;46m
#
#EscCode = ""
#
class String
	#色情報を付加。
	#foreground, background はシンボルで指定。
	#	0:黒 :black
	#	1:赤 :red
	#	2:緑 :green
	#	3:黄 :yellow
	#	4:青 :blue
	#	5:紫 :magenta
	#	6:空 :cyan
	#	7:白 :white
	#	デフォルト :default
	COLOR_CODE = {
		:black   => 0, :red     => 1, :green   => 2, :yellow  => 3,
		:blue    => 4, :magenta => 5, :cyan    => 6, :white   => 7,
		:default => 9,
	}

	#self の先頭と末尾にカラー情報を入れたエスケープシーケンスをいれる。
	#bg: background を省略するとデフォルトカラーが入る。
	#fg: foreground を省略するとデフォルトカラーは入らない。
	#両方デフォルトカラーというのは意味がないだろうから。
	#デフォルトカラーが指定されてもエスケープシーケンスを省略したりしない。
	def color( fg, bg = :default )
		"\e[3#{COLOR_CODE[ fg ]};4#{COLOR_CODE[ bg ]}m" + self + "\e[39;49m"
	end

end

#class ColoredString
#	def initialize(str, fg_color = nil, bg_color = nil)
#		@string = str
#		@fg_color = fg_color
#		@bg_color = bg_color
#	end
#
#	def setFgColor(color)
#		@fg_color = color
#	end
#
#	def setBgColor(color)
#		@bg_color = color
#	end
#		
#
#	def getString
#		if ((@fg_color != nil) && (@bg_color != nil))
#			fg_colorCode = symbol2ColorCode(@fg_color)
#			bg_colorCode = symbol2ColorCode(@bg_color)
#			string = "[3#{fg_colorCode};4#{bg_colorCode}m" + @string + "[39;49m"
#		elsif (@fg_color != nil)
#			fg_colorCode = symbol2ColorCode(@fg_color)
#			string = "[3#{fg_colorCode}m" + @string + "[39m"
#		elsif (@bg_color != nil)
#			bg_colorCode = symbol2ColorCode(@bg_color)
#			string = "[4#{bg_colorCode}m" + @string + "[49m"
#		else #both of them are not colored
#			string = @string
#		end
#		string
#	end
#
#	private
#	def symbol2ColorCode(color)
#		case color
#			when :black   then colorCode = 0
#			when :red     then colorCode = 1
#			when :green   then colorCode = 2
#			when :yellow  then colorCode = 3
#			when :blue    then colorCode = 4
#			when :magenta then colorCode = 5
#			when :cyan    then colorCode = 6
#			when :white   then colorCode = 7
#		end
#		colorCode
#	end
#end

