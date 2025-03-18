# frozen_string_literal: true
require 'byebug'
# StringCalculator
class StringCalculator
  # rubocop:disable Metrics/MethodLength
  def self.add(str)
    return 0 if str.empty?

    number_str = str.gsub(/[a-zA-Z\s.,;\/]/,' ').split
    return 0 if number_str.empty?
    num_list = number_str.map(&:to_i)

    negatives = num_list.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

    num_list.sum
  end
  # rubocop:enable Metrics/MethodLength
end
