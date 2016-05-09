class DatosPersonales

 	def datos
 	puts "Whats your name ?"
 	$nombre=gets.chomp.to_s
 	puts "how old are you?"
 	$edad=gets.chomp.to_i
 	return $edad
 end
end


