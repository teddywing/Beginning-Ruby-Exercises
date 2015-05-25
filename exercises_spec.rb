require 'minitest/spec'
require 'minitest/autorun'

require_relative 'exercises'


describe 'exercises' do
  describe '#divide' do
    it 'must divide first number by second number' do
      divide(12, 3).must_equal 4
      divide(28, 2).must_equal 14
    end
  end
  
  describe '#hello5' do
    it 'must print "hello" 5 times' do
      -> { hello5 }.must_output <<EOS
hello
hello
hello
hello
hello
EOS
    end
  end
  
  describe '#hello_x_times' do
    it 'must print "hello" the same number of times specified in the ' \
      'argument' do
      -> { hello_x_times(3) }.must_output 'hellohellohello'
    end
  end
  
  describe '#string_plus' do
    it 'must return its arguments concatenated together' do
      string_plus('Does ', 'this work?').must_equal 'Does this work?'
    end
  end
  
  describe '#join_reverse_array' do
    it 'must return a string containing array elements concatenated in ' \
      'reverse order' do
      join_reverse_array(['test', 'hello', 'thing', 'example']).must_equal \
        'examplethinghellotest'
    end
  end
  
  describe '#array_tack_join' do
    it 'must return a string with each element from the array passed in ' \
      'concatenated with its string parameter and joined with newlines' do
      array_tack_join(['banana', 'orange', 'apple'], ' cat').must_equal \
'banana cat
orange cat
apple cat'
    end
  end
  
  describe 'Table' do
    it 'must be initialised with a decimal height' do
      t = Table.new(50.4)
      t.must_be_instance_of Table
    end
    
    it 'must allow reading of `height`' do
      height = 30.21
      t = Table.new(height)
      t.height.must_equal height
    end
    
    it 'must allow writing of `height`' do
      height = 70.3
      t = Table.new(5)
      t.height = height
      t.instance_variable_get(:@height).must_equal height
    end
  end
  
  describe 'Table2#height_times2' do
    it 'must return 2 times the table height' do
      height = 67.3
      t = Table2.new(height)
      t.height_times2.must_equal height * 2
    end
  end
end
