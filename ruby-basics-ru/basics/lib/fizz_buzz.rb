# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return nil if start > stop
  (start..stop).map do |item|
    if item % 15 == 0
      'FizzBuzz'
    elsif item % 3 == 0
      'Fizz'
    elsif item % 5 == 0
      'Buzz'
    else
      item
    end
  end.join(' ')
end

# END
