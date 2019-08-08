require "leonid_palindrome/version"

class String

  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters
  self.scan(/[a-z]/i).join.downcase
  end

  private
    def processed_content
      self.letters.downcase
    end



end
