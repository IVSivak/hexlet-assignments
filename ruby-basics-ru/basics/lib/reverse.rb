# frozen_string_literal: true

# BEGIN
def reverse(str)
  res = ''
  str.split('').each do |char|
    res = "#{char}#{res}"
  end
  res
end
# END
