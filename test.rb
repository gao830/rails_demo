class Test
  @@sum = 0
  
  def initialize()
    @@sum += 1

  end
  
  def self.add(input)
    @@sum = @@sum + input
  end
  
  def self.result
    puts @@sum
  
  end
  
end

# Test.add(3)
# Test.result

test1 = Test.new()
Test.result
test2 = Test.new()

# test1.add(2)
# test2.add(3)


Test.result
