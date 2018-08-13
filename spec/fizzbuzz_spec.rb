require 'fizzbuzz'

describe Fizzbuzz do

  before(:all) do
    @game = Fizzbuzz.new
    @range = @game.createRange(1,5)
  end

  it "return fizz if a number is divisible by 3" do
    @range.each do |element|
      expect(@game.checkFizzBuzz(element)).to eql("Fizz").or eql(element)
    end
  end

  it "return buzz if a number is divisible by 5" do
    @range.each do |element|
      expect(@game.checkFizzBuzz(element)).to be(true).or be(false)
    end
  end

  it "return fizzbuzz if a number is divisible by 3 & 5" do
    @range.each do |element|
      expect(@game.checkFizzBuzz(element)).to be(true).or be(false)
    end
  end

  it "just return a number if it is not divisible by 3 or 5" do
    @range.each do |element|
      expect(@game.checkFizzBuzz(element)).to be(true).or be(false)
    end
  end

  it "give it a range and create a sum of multiples of 3 and 5, " do
    @range.each do |element|
      expect(@game.multiplesOf1to999(1,999)).to be(233168)
    end
  end

  it "give it a range and create a sum of multiples of 3 and 5, " do
    @range.each do |element|
      expect(@game.fibonacci).to be(3145728)
    end
  end

end
