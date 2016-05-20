module Conversion
	def Conversion.minutesToHours minutes
		result=minutes/60
		return result
	end

	def Conversion.hoursToDays hours
		result=hours/24
		return result
	end
	def Conversion.daysToMonths days
		result=days/30
		return result
	end
end


require 'singleton'


class Parcial
	include Singleton
	include Conversion
	attr_accessor :username, :id
	

	def initialize 
		@username=nil
		@id=nil
		@myHash=Hash.new
		@tipoConversion=Hash.new
	end

	def data amount
		amount.times do
		flag=nil
		while flag==nil do
		puts "ingrese su username"
		@username=gets.chomp.to_s
		puts "ingrese su ID"
		@id=gets.chomp.to_i
		flag=@username=~/^[a-z0-9]{3,11}$/
		if flag != nil 
		 @myHash.store @id,@username
		 @tipoConversion.store @id,conver
		 
		 end
		end 
		#@tipoConversion=@myHash.clone
		p @myHash
		p @tipoConversion
	 end
		
	end

	


	def amountOfUsers
		flag=nil
		while flag==nil do
		puts "Cuantos Usuarios se registraran (MINIMO 3)?"
		amount=gets.chomp.to_i
		if amount>2 && amount<15 then flag=1 end
		end
		return amount
	end


	def conver
		
		puts "Que tipo de conversion necesita a.-minuto/horas, b.-horas/dia o c.-dias/mes"
		opcion=gets.chomp
		return opcion
	end

	def calculo
		
		p @tipoConversion
		miarchivo=File.open("pracial.txt", "w+")
		@tipoConversion.each {|key,value|
			if value=="a"
				puts"Ingrese la cantidad de Minutos"
				minutos=gets.chomp.to_i
			    resultado=Conversion.minutesToHours minutos	
			    puts "el id #{key}convirtio #{minutos} a #{resultado} horas "
			    miarchivo.write("el id #{key}convirtio #{minutos} a #{resultado} horas \n")
			end
			if  value=="b"
				puts"Ingrese la cantidad de Horas"
				horas=gets.chomp.to_i
			    resultado=Conversion.hoursToDays horas	
			    puts "el id #{key}convirtio #{horas} a #{resultado} dias "
			     miarchivo.write("el id #{key}convirtio #{horas} a #{resultado} dias \n")
			end
			if value=="c"
				puts"Ingrese la cantidad de Horas"
				dias=gets.chomp.to_i
			resultado=Conversion.daysToMonths dias	
			miarchivo.write ("el id #{key}convirtio #{dias} a #{resultado} meses \n")
			puts "el id #{key}convirtio #{dias} a #{resultado} meses "
			end

		 }

		 miarchivo.close
	end


end
par=Parcial.instance
par.data par.amountOfUsers
par.calculo

