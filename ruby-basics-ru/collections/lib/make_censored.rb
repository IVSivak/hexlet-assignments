# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  str = text.split(' ')
  str.each_with_index do |word, index|
    str[index] = '$#%!' if stop_words.include? word
  end.join(' ')
  # END
end

# rubocop:enable Style/For
