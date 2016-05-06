puts"convertir segundos  a: 1.- minutos , 2.- horas, 3.- dias 4.- Todas"
eleccion = gets.chomp.to_i
puts" Introducir cantidad de segundos"
segundos = gets.to_f
puts "#{ eleccion } "
puts "#{ segundos } "
if(eleccion ==1)
 puts "la cantidad de minutos es:#{ segundos/60 }   "
 end
 if(eleccion==2)
  	puts "la cantidad de horas es:#{ segundos/3600 }   "
 end
 
  if (eleccion==3)
  	puts "la cantidad de dias es:#{ segundos/86400 }   "
  end
  	
  	 if (eleccion==4)
  	 	puts "la cantidad de minutos es:#{ segundos/60 }   "
  	 	puts "la cantidad de horas es:#{ segundos/3600 }   "
  	    puts "la cantidad de dias es:#{ segundos/86400 }   "
  end
