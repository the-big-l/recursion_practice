require 'rspec'
require 'basic_recursion'

describe 'Recursion' do
  describe 'Multiply' do
    it 'multiplies two numbers together' do
      expect(multiply(2, 5)).to eq(10)
    end
  end
end
