#I'm not sure if this is what had to be done
puts "give me a number"
number= gets.chomp.to_i
puts " A  number is #{ number }"
=begin
$ ruby practica3ImprimirComoInt.rb

give me a number
24
 A  number is 24


give me a number
45asd
 A  number is 45


give me a number
asdf
 A  number is 0


give me a number
asds26
 A  number is 0
=end