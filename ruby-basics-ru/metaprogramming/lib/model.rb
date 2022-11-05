# frozen_string_literal: true

# BEGIN
module Model

  def self.included(base)
    base.extend(InstanceMethods)
  end

  def initialize(params = {})
    params.each do |key, value|
      public_send "#{key}=", value
    end
  end

  def attributes
    instance_variables.each_with_object({}) do |attr, acc|
      acc[attr.to_s.tr('@', '').to_sym] = instance_variable_get(attr)
    end
  end

  module InstanceMethods
    def attribute(name, options = {})
      define_method name do
        instance_variable_get "@#{name}"
      end

      define_method "#{name}=" do |val|
        instance_variable_set "@#{name}", options[:type] == :datetime ? DateTime.parse(val) : val
      end
    end
  end

end
# END
