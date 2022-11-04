# frozen_string_literal: true

# BEGIN
def count_by_years(men)
  men
    .filter { |man| man[:gender] == 'male' }
    .map { |man| man[:birthday] }
    .map { |birthday| birthday.split('-')[0] }
    .reduce({}) do |acc, year|
    acc[year] ||= 0
    acc[year] += 1
    acc
  end
end

# END
