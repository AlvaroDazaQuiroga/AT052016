class Iterators
          
    def initialize number
        @cantidad=number
    end

	def getNameAndId
 	@persons= Hash.new
	@cantidad.times do |variable|
		puts "Ingrese el nombre"
	    name=gets.chomp
		puts "ingrese el Id"
		id=gets.chomp.to_i
		@persons.store id,name
		
		end
     p @persons
    end


	def changeToUperPrintSave
		nameArray=Array.new
		#hash.update(hash){ |k,v| "%#{v}%" }
		@persons.update(@persons){ |id,name| name.upcase }
	

		@persons.each do |id,name| 
		puts "este es el nombre #{name} y este es su ID #{id}"
		nameArray.push name
		end
		return nameArray
		

	end
	def goodBye
		@persons.each do |id,name|
			puts "ADIOS #{name}"
		end
	end



	



	
end
puts " que cantidad de personas?"
number=gets.chomp.to_i
ite=Iterators.new number
ite.getNameAndId
puts ite.changeToUperPrintSave
ite.goodBye
