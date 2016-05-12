def array
	numeros= %w{uno dos tres cuatro}
	return numeros
end
def array2
	numeros2= ["tres","cuatro","cinco","seis"]
	return numeros2
end
def printFirstElement arreglo
	arreglo.first
end
def printLastElement arreglo
	arreglo.last
end
 def printTheIntersection arreglo,arreglo2 
 	puts arreglo & arreglo2
 end
puts array

puts " este es el primer elemento del arreglo:  #{ printFirstElement array }"
puts " este es el ultimo elemento del arreglo:  #{ printLastElement array }"
printTheIntersection array,array2