require 'rspec'
# uncomment below line and delete this line for final
# require 'basic_recursion'
require_relative '../solutions/basic_recursion'

describe 'Recursion' do
  context 'The factorial method' do
    it 'calculates factorial of n.' do
      expect(factorial(0)).to eq(1)
      expect(factorial(1)).to eq(1)
      expect(factorial(5)).to eq(120)
    end
  end

  context 'The happy_feet method' do
    it 'counts the number of penguin feet.' do
      expect(happy_feet(0)).to eq(0)
      expect(happy_feet(1)).to eq(2)
      expect(happy_feet(11)).to eq(22)
    end
  end

  context 'The multiply method' do
    it 'multiplies two numbers together.' do
      expect(multiply(0, 5)).to eq(0)
      expect(multiply(5, 0)).to eq(0)
      expect(multiply(2, 5)).to eq(10)
      expect(multiply(7, 7)).to eq(49) # go 'niners!
    end
  end

  context 'The fibonacci method' do
    it 'returns the nth fibonacci number.' do
      expect(fibonacci(1)).to eq(0)
      expect(fibonacci(2)).to eq(1)
      expect(fibonacci(8)).to eq(13)
      expect(fibonacci(13)).to eq(144)
    end
  end
end
