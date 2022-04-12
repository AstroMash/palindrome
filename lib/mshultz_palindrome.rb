# frozen_string_literal: true

require_relative "mshultz_palindrome/version"

module MshultzPalindrome

    def palindrome?
        if processed_content.empty?
            false
        else
            processed_content == processed_content.reverse
        end
    end

    private

    def processed_content
        to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
    include MshultzPalindrome
end

class Integer
    include MshultzPalindrome
end