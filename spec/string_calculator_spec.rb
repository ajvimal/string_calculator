# frozen_string_literal: true

# TDD - RSpec Tests
require_relative '../lib/string_calculator'
describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'returns the number itself when only one number is given' do
      expect(StringCalculator.add('1')).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(StringCalculator.add('1,5')).to eq(6)
    end

    it 'handles multiple numbers' do
      expect(StringCalculator.add('1,2,3,4,5')).to eq(15)
    end
  end
end
