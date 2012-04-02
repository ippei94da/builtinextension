#! /usr/bin/ruby -w

class String
	
	#zsh で特殊な意味を持つ文字をバックスラッシュでエスケープする。
	def escape_zsh
		temp = dup
		temp.gsub!('\\', '\\\\\\') #最初にしないと他の結果をさらに置換してしまう
		#temp.gsub!('/', '/') #「/」はディレクトリ区切り文字なのでエスケープしない
		temp.gsub!(' ', '\ ') ; temp.gsub!('!', '\!') ; temp.gsub!('"', '\"') ;
		temp.gsub!('#', '\#') ; temp.gsub!('$', '\$') ; temp.gsub!('%', '\%') ;
		temp.gsub!(')', '\)') ; temp.gsub!('(', '\(') ; temp.gsub!('*', '\*') ;
		temp.gsub!(',', '\,') ; #temp.gsub!('-', '\-') ; #temp.gsub!('.', '\.') ;
		temp.gsub!(':', '\:') ; temp.gsub!(';', '\;') ; temp.gsub!('<', '\<') ;
		temp.gsub!('=', '\=') ; temp.gsub!('>', '\>') ; temp.gsub!('?', '\?') ;
		temp.gsub!('@', '\@') ; temp.gsub!('[', '\[') ; temp.gsub!(']', '\]') ;
		temp.gsub!('^', '\^') ; temp.gsub!('_', '\_') ; temp.gsub!('{', '\{') ;
		temp.gsub!('|', '\|') ; temp.gsub!('}', '\}') ; temp.gsub!('~', '\~') ;
		temp.gsub!('`', '\\\`') ; temp.gsub!('&', '\\\&') ;
		temp.gsub!('+', '\\\+') ; temp.gsub!("'", "\\\\'") ;
		return temp
	end

end
