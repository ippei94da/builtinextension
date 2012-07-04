#! /usr/bin/env ruby
# coding: utf-8

#
#
#
class String

  # Split String using correspond parentheses.
  # "(ab)(cd(ef))gh(ij)kl(mn)"  -> ["(ab)", "(cd(ef))", "gh", "(ij)", "kl", "(mn)"]
  # "((ab)(cd(ef))gh(ij)kl(mn)" -> ["((ab)(cd(ef))gh(ij)kl(mn)"]
  # "(ab)(cd(ef)))gh(ij)kl(mn)" -> ["(ab)", "(cd(ef))", ")gh(ij)kl(mn)"]
  def split_parens
    depth = 0
    current = ''
    results = []
    self.split('').each do |char|
      if char.open_paren?
        if (depth == 0 )
          results << current
          current = ''
        end
        current << char
        depth += 1
        next
      end

      if char.close_paren?
        depth -= 1
        current << char
        if (depth == 0)
          results << current
          current = ''
        end
        next
      end

      current << char
    end
    results << current
    results.delete_if{|item| item.empty? }
    return results
  end

  private

  # Return true if self is a single character and open parenthesis.
  def open_paren?
    '({[<（｛［＜〔【〈《「『'.split('').include?(self)
  end

  # Return true if self is a single character and close parenthesis.
  def close_paren?
    ')}]>）｝］＞〕】〉》」』'.split('').include?(self)
  end
end

