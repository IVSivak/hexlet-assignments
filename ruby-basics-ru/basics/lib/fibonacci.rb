# frozen_string_literal: true

# BEGIN
def fibonacci(num)
  if num >= 0
    prev, curr = 0, 1
    (0...num).each {
      prev, curr = curr, prev + curr
    }
    prev
  else
    -1
  end
end

# END
