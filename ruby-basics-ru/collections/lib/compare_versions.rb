# frozen_string_literal: true

# BEGIN
def compare_versions(first, second)
  ver1 = first
           .split('.')
           .reverse
           .map(&:to_i)
           .each_with_index
           .reduce(0) { |acc, (item, index)| acc + item * (100 ** index) }
  ver2 = second
           .split('.')
           .reverse
           .map(&:to_i)
           .each_with_index
           .reduce(0) { |acc, (item, index)| acc + item * (100 ** index) }
  ver1 <=> ver2
end

# END
