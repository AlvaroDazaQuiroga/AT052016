class PracticeHashes
	attr_reader :miNuevoHash
	
	

	def fillhash
	@miNuevoHash=Hash.new
	puts " de que tamaño sera el hash ?"
	size=gets.chomp.to_i
	size.times do |variable|
		puts "Ingrese el key "
		key=gets.chomp.to_i
		puts "ingrese el valor del  key "
		value=gets.chomp
		miNuevoHash.store key,value
	end
	end

		def printHash mihash
		puts "#{miNuevoHash}"
		end
		def printKesyOfHash mihash
		puts "#{miNuevoHash.keys}"
		end	
		def printValuesOfHash mihash
		puts "#{miNuevoHash.values}"
		
		end
		def printKeyIfexist mihash
		puts "ingrese el key que se busca en el hash"
		request = gets.chomp.to_i
		answer=miNuevoHash.has_key? request
		puts answer
		
		end
		def printValueIfExist mihash
		puts "ingrese el valor que se busca en el hash"
		valueRequest=gets.chomp
		answer=miNuevoHash.has_value? valueRequest
		puts answer
		end	
		
end



pracHash=PracticeHashes.new
pracHash.fillhash
pracHash.printHash @miNuevoHash
pracHash.printKesyOfHash @miNuevoHash
pracHash.printValuesOfHash @miNuevoHash
pracHash.printKeyIfexist @miNuevoHash
pracHash.printValueIfExist @miNuevoHash

