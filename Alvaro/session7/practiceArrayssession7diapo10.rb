class PracticeDiapo10Sess7
	
 
 def comparation arr1,arr2
 	puts"los arreglos son "
 	puts " numero 1 #{arr1}"
 	puts  " numero 2 #{arr2}"
 	puts "los elementos en comun son"
 	 puts " elementos en comun #{arr1 & arr2}"
 	 puts "los primeros elementos de cada arreglo son #{arr1.first}  y #{arr2.first} " 
 	 puts "los ultimos elementos de cada arreglo son #{arr1.last}  y #{arr2.last} "
 end

 def elements arr1,arr2
    puts " numero 1 #{arr1}"
 	puts  " numero 2 #{arr2}"
 	puts  " quitando el primer y ultimo elemento de los arreglos"
 	puts  " numero 1 #{arr1.pop}"	
 	puts  " numero 2 #{arr2.shift}"
 	puts  " juntos son #{arr2.unshift arr1}"
 	return arr2
 end

	def is_number value
 # true if int(value) rescue false
	 value.to_i.to_s == value.to_s

	end

	def insertValuesArray
		onlyNumbers=Array.new
		others=Array.new
		mixed=Array.new
		puts "De que tamaño sera el array"
		size=gets.chomp.to_i
		
		size.times do |variable|
			puts "inserte los valores del array"
			value=gets.chomp
			comparacion=is_number value
			
		    if comparacion== true
		    	onlyNumbers.push value
		    	mixed.push value
			end
			if comparacion== false
				others.push value
				mixed.push value
			end
			
			
		end
		    p onlyNumbers
			p others
			p mixed
			
	#return onlyNumbers,mixed
	end

	
	
	 	
	

end
misArr=PracticeDiapo10Sess7.new 
#misArr.comparation misArr.insertValuesArray
misArr.insertValuesArray
arr1=["a","b","c","f","r","e"]
arr2=["p","x","z","f","p","e"]
misArr.comparation arr1,arr2
misArr.elements arr1,arr2


