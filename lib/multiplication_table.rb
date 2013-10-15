require_relative 'prime_number'

class MultiplicationTable
  attr_accessor :count, :prime_list
  DEFAULT_COUNT = 10
  def initialize(args = [])
    @table = []
    @count = args.empty? ?  DEFAULT_COUNT : args[0].to_i
    @prime_list = PrimeNumber.first(@count)
  end
  
  def table_header
    prime_list
  end
  
  #create prime number multipliers
  def table_elements
    prime_list.each_with_index do |row_val,row_index|
      prime_list.each_with_index do |col_val,col_index|
        @table << row_val * col_val
      end
    end
    return @table #returns [4, 6, 10, 6, 9, 15, 10, 15, 25]
  end
  
  #print table
  def print_table
    if count > 0
      grouped_table_elements = group_array_elements(table_elements,count) 
      table_with_header =  grouped_table_elements.insert(0,table_header)
      table_with_header.each do |r|
        col_element = (r[0]/2==1 ? 'x' : r[0]/2)
        puts r.insert(0,col_element).map { |p| p }.join("\t")
      end
    end
  end
  
  # group array elements, e.g [4, 6, 10, 6, 9, 15, 10, 15, 25] to [[4, 6, 10], [6, 9, 15], [10, 15, 25]]
  def group_array_elements(element_array,slice_size)
    element_array.each_slice(slice_size).to_a
  end
  
end




