
	
	def datos name,price,destination="CBBA"

	 	puts "#{ name }, el precio es #{ price }, y el destino es #{ destination }"

 	end
 	def toDollar price
      price/6.98
 	end

puts " Introducir el nombre del pasajero "
name=gets.chomp
puts "introduce the ticket price"
priceTicket=gets.chomp.to_f
puts toDollar priceTicket 
puts "introduce destination"
destination=gets.chomp
puts result = (destination=="") ? (datos name,priceTicket) : (datos name,priceTicket,destination )



