def multipleReturn seconds
	minutes = seconds/60.to_f
	hours= seconds/(60*60).to_f
	return minutes,hours
end
puts "introducir la cantidad de Segundos"
seconds=gets.chomp.to_f
minutes,hours = multipleReturn seconds
puts " #{seconds} son  #{minutes} y en horas #{hours} "