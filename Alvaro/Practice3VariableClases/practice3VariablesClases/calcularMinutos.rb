require_relative "DatosPersonales.rb"
class  CalcularMinutos
	def minutos edad
		puts " Now to calculate the age in minutes "
		edadMinutos=edad*365*24*60
		puts " Age in minutes is : #{ edadMinutos }"
	end
end

time= DatosPersonales.new.datos
puts "This is the value of the variable we receive from the class DatosPersonales #{ time }"
CalcularMinutos.new.minutos (time)
