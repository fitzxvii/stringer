# frozen_string_literal: true

require_relative "stringer/version"

module Stringer
    class Error < StandardError; end
    def self.spacify *strings
        string = ""
        strings.each_with_index do |s, index|
            string +=  s
            string += " " unless (index + 1) == strings.length
        end
        string
    end

    def self.minify string, max
      if string.length <= max
          string 
      else
          string [0...max] + "..."
      end
    end

    def self.replacify(string, to_replace, replacement)
      split = string.split(' ')
      split.each_with_index do |word, index|
          split[index] = replacement if word == to_replace
          split[index] = (replacement + word[word.length-1]) if word[0...word.length-1] == to_replace
      end
      split.join(' ')
    end

    def self.tokenize(string)
        string.split(' ')
    end

    def self.removify(string, to_remove)
        string.split(' ').map! { |word| word unless word == to_remove }.join(' ').split(' ').join(' ')
    end 
end
