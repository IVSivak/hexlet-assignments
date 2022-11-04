# frozen_string_literal: true

# BEGIN
def anagramm_filter(sample, words)
  sorted = sample.split('').sort
  words.filter do |word|
    word.split('').sort == sorted
  end
end
# END
