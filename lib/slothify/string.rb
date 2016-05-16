module Slothify

  class InvalidLengthError < StandardError; end
  DEFAULT_LENGTH = 3
  MIN_LENGTH = 1
  MAX_LENGTH = 300 # Because really, you're just taking the piss now

  refine String do
    # Slothify your strings
    #
    # Example:
    #   >> "Hello, world!".slothify(5)
    #   => "Helloooooo, worldddddd!"
    #
    # Arguments:
    #   length: (Fixnum)
    def slothify(length = DEFAULT_LENGTH)
      raise InvalidLengthError, "Please input a length between #{MIN_LENGTH} and #{MAX_LENGTH}" unless valid_length(length)

      # Split up the string to modify one word at at time
      self.split.map do |word|
        # Find the last alphabetic character to extend
        last_alpha_index = word.rindex(/[[:alpha:]]/)
        if last_alpha_index.nil?
          # No alpha characters found, don't do anything
          word
        else
          # Insert the specified number of repeat chars
          word.insert last_alpha_index, word[last_alpha_index] * length
        end
      end.join(" ")
    end

    private

    def valid_length(l)
      (MIN_LENGTH..MAX_LENGTH) === l
    end
  end

end
