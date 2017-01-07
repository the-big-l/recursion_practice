require 'rspec'
# uncomment below line and delete this line for final
# require 'basic_recursion'
require_relative '../solutions/basic_recursion'

describe 'Using recursion' do
  context 'the factorial method' do
    it 'calculates factorial of n' do
      expect(factorial(0)).to eq(1)
      expect(factorial(1)).to eq(1)
      expect(factorial(5)).to eq(120)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:factorial).at_least(:twice).and_call_original
      factorial(6)
    end
  end

  context 'the happy_feet method' do
    it 'counts the number of penguin feet' do
      expect(happy_feet(0)).to eq(0)
      expect(happy_feet(1)).to eq(2)
      expect(happy_feet(11)).to eq(22)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:happy_feet).at_least(:twice).and_call_original
      happy_feet(6)
    end
  end

  context 'the multiply method' do
    it 'multiplies two numbers together' do
      expect(multiply(0, 5)).to eq(0)
      expect(multiply(5, 0)).to eq(0)
      expect(multiply(2, 5)).to eq(10)
      expect(multiply(7, 7)).to eq(49) # go 'niners!
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:multiply).at_least(:twice).and_call_original
      multiply(6, 10)
    end
  end

  context 'the fibonacci method' do
    it 'returns the nth fibonacci number' do
      expect(fibonacci(1)).to eq(0)
      expect(fibonacci(2)).to eq(1)
      expect(fibonacci(8)).to eq(13)
      expect(fibonacci(13)).to eq(144)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:fibonacci).at_least(:twice).and_call_original
      fibonacci(6)
    end
  end

  context 'the unhappy_feet method' do
    it 'counts the number of penguin feet' do
      expect(unhappy_feet(0)).to eq(0)
      expect(unhappy_feet(1)).to eq(1)
      expect(unhappy_feet(2)).to eq(3)
      expect(unhappy_feet(5)).to eq(7)
      expect(unhappy_feet(10)).to eq(15)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:unhappy_feet).at_least(:twice).and_call_original
      unhappy_feet(6)
    end
  end

  context 'the block_count method' do
    it 'counts the number of blocks in a stack h high' do
      expect(block_count(0)).to eq(0)
      expect(block_count(1)).to eq(1)
      expect(block_count(2)).to eq(3)
      expect(block_count(5)).to eq(15)
      expect(block_count(100)).to eq(5050)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:block_count).at_least(:twice).and_call_original
      block_count(6)
    end
  end

  context 'the sum_of_digits method' do
    it 'adds up the numbers making up a number' do
      expect(sum_of_digits(0)).to eq(0)
      expect(sum_of_digits(15)).to eq(6)
      expect(sum_of_digits(23_547)).to eq(21)
      expect(sum_of_digits(987_464)).to eq(38)
      expect(sum_of_digits(9_081_345_672)).to eq(45)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:sum_of_digits).at_least(:twice).and_call_original
      sum_of_digits(6324)
    end
  end

  context 'the count_seven method' do
    it "counts the number of '7's in a number." do
      expect(count_seven(0)).to eq(0)
      expect(count_seven(17)).to eq(1)
      expect(count_seven(77_547)).to eq(3)
      expect(count_seven(977_767)).to eq(4)
      expect(count_seven(7_777_777)).to eq(7)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:count_seven).at_least(:twice).and_call_original
      count_seven(7575)
    end
  end

  context 'the lucky_sevens method' do
    it "counts the number of '7's in a number." do
      expect(lucky_sevens(0)).to eq(0)
      expect(lucky_sevens(17)).to eq(1)
    end

    it "adds a bonus 4 points to triple sevens ('777')" do
      expect(lucky_sevens(777)).to eq(7)
      expect(lucky_sevens(777_467)).to eq(8)
      expect(lucky_sevens(7_077_377_776)).to eq(15)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:lucky_sevens).at_least(:twice).and_call_original
      lucky_sevens(777_997)
    end
  end

  context 'the power method' do
    it 'raises a base to the nth power' do
      expect(power(10, 0)).to eq(1)
      expect(power(7, 1)).to eq(7)
      expect(power(2, 8)).to eq(256)
      expect(power(10, 3)).to eq(1000)
      expect(power(99, 2)).to eq(9801)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:power).at_least(:twice).and_call_original
      power(2, 10)
    end
  end

  context 'the count_x method' do
    it "counts the number of lowercase 'x's in a string" do
      expect(count_x('a')).to eq(0)
      expect(count_x('hx')).to eq(1)
      expect(count_x('axelxray')).to eq(2)
      expect(count_x('the xx')).to eq(2)
      expect(count_x('xXxKwixKopesxXx')).to eq(5)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:count_x).at_least(:twice).and_call_original
      count_x('xXxX')
    end
  end

  context 'the count_me method' do
    it "counts the number of lowercase 'me's in a string" do
      expect(count_me('oem')).to eq(0)
      expect(count_me('me')).to eq(1)
      expect(count_me('memes')).to eq(2)
      expect(count_me('men and women')).to eq(2)
      expect(count_me('mememememe')).to eq(5)
    end

    it 'and calls itself recursively.' do
      expect(self).to receive(:count_me).at_least(:twice).and_call_original
      count_me('meme')
    end
  end
end
