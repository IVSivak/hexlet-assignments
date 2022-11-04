# frozen_string_literal: true

# BEGIN
def get_same_parity(arr)
  return [] if arr.empty?
  pred = arr[0].even? ? :even? : :odd?
  arr.filter(&pred)
end

# END
