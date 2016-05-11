def method_block

##some code

result=0

result=yield

puts "The value obtained is #{result}"

end 

 

method_block { result = 15 *25 }

 

method_block do 
puts "I changed the value into the block"
result = result==0? 25+15:25*5



## any other code  that you would like to introduce into the method

end

 

method_block {result = 15 /25}
