# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(query)
  query.keys.sort.map do |key|
    "#{key}=#{query[key]}"
  end.join('&')
end
# END
# rubocop:enable Style/For
