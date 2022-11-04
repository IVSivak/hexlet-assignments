# frozen_string_literal: true

# BEGIN
require 'forwardable'

class Url
  attr_accessor :url
  extend Forwardable
  def_delegator :@url, :scheme, :scheme
  def_delegator :@url, :host, :host

  def initialize(url)
    @url = URI(url)
  end

  def query_params
    return {} if @url.query.nil?
    @url.query
        .split('&')
        .reduce({}) do |acc, each|
      key, value = each.split('=')
      acc[key.to_sym] = value
      acc
    end
  end

  def query_param(key, value = nil)
    query_params[key] ? query_params[key] : value
  end

  def ==(other)
    url == other.url
  end
end

# END
