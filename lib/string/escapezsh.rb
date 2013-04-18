#! /usr/bin/ruby -w

class String
  
  # Add backslash escape at the characters that have perticular meaning in zsh.
  def escape_zsh
    temp = dup
    temp.gsub!('\\', '\\\\\\') # This must be at first, not to substitute other results.
    #temp.gsub!('/', '/') # / is not for escape, due to directory separator.
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
