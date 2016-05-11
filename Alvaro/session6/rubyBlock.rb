
def test_block
puts " you are in the method "
yield
puts " you are again back to the method"
yield
end
test_block {puts "You are in the block"}