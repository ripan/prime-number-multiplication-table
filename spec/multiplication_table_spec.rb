require_relative '../lib/multiplication_table'
require_relative '../lib/prime_number'

describe MultiplicationTable do
  
  before { @multiplication_table  = MultiplicationTable.new([1]) }
  
  describe "with 1 slice count" do
    it "should split the array into pair of 1's " do      
      array = [1,2,3,4]
      slice_count = 1
      @multiplication_table.group_array_elements(array,slice_count).should eq([[1], [2], [3], [4]])
    end
  end
  
  describe "with 2 slice count" do
    it "should split the array into pair of 2's " do      
      array = [1,2,3,4]
      slice_count = 2
      @multiplication_table.group_array_elements(array,slice_count).should eq([[1,2], [3,4]])
    end
  end
  
  describe "with 3 prime numbers" do    
    it "should return multiplication array if each prime number multiplied by other " do      
      multiplication_table  =  MultiplicationTable.new([3])
      multiplication_table.table_elements.should eq([4, 6, 10, 6, 9, 15, 10, 15, 25])
    end
  end
  
  describe "with 2 prime numbers" do    
    it "should return multiplication array if each prime number multiplied by other " do      
      multiplication_table  =  MultiplicationTable.new([2])
      multiplication_table.table_elements.should eq([4, 6, 6,9])
    end
  end
  
end


