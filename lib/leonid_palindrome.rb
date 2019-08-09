 require "leonid_palindrome/version"

module LeonidPalindrome

  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end

  end



  private
    def processed_content
      self.to_s.scan(/[a-z0-9]/i).join.downcase
    end

end


class String
  include LeonidPalindrome
end

class Integer
  include LeonidPalindrome
end
