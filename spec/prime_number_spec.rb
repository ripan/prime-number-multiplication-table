require_relative '../lib/prime_number'
describe PrimeNumber do
  
  describe "with 0 as argument" do
    it "should return an empty array" do
      PrimeNumber.first(0).should eq([])
    end
  end
  
  describe "with 1 as argument" do
    it "should return first prime number" do
      PrimeNumber.first(1).should eq([2])
    end
  end
  
  describe "with 10 as argument" do
    it "should return first 10 prime numbers" do
      PrimeNumber.first(10).should eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end
  end
  
end