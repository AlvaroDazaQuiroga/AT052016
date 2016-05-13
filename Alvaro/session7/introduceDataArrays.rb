class InsertValueToArray
def user
	
	variableArray=Array.new
	puts "cuantos argumentos tendra el array?"
	cantidad=gets.chomp.to_i
	cantidad.times do |value_2 |
		puts "Introduzca el valor "
		valor=gets.chomp
		variableArray.push valor
	end
	return variableArray
end

def printArray variableArray
	p variableArray
end
	
end

inserta=InsertValueToArray.new

inserta.printArray inserta.user

	 



