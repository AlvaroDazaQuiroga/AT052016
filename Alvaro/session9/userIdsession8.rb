class UserInformation
	

	def initialize
		@userHash={}
	end

	def userData
		flag=nil
		
		while flag==nil do
		puts "inserte el numero de usuario solo numero del 1 al 100"
		flag=id=gets.chomp
		flag=id=~/^[1-9][0-9]?$|^100$/
		end	
		
		return id
	
	end
	def userName
		flag=nil
		puts "insert the username only lower case y de tamaño 8"
		while flag==nil do
		name=gets.chomp
		flag=name=~/[a-z].{7}/
	
		end	
		return name
         
	end
	def dataHash id,name
		@userHash.store id,name
		p @userHash
	end

	def userRequest
		puts "inserte en numero de ID"
		idRequest=gets.chomp.to_i
		
		array=[]
		@userHash.each{|id,name| 
			response=nil 
			response=id.to_s=~/#{idRequest}/
			if response!=nil then array.push(id) end}
			p "la cantidad #{array.length} LOS ID #{array}    "

	end
	def nameRequest
		puts "inserte una letra"
		naRequest=gets.chomp
		
		array2=[]
		@userHash.each{|id,name| 
			response=nil 
			response=name.to_s=~/#{naRequest}/
			if response!=nil then array2.push(name) end}
			p "la cantidad #{array2.length} LOS names #{array2}    "

	end
	def printUser id
		case id
		
		when (1..25) then puts "User belong Group 1"
		when (26..50) then puts "User belong Group 2"
		when (51..75) then puts "User belong Group 3"
		when (76..100) then puts "User belong Group 4"	
			
		end


	end
end

us=UserInformation.new
puts "numero de usuarios a en el hash"
number=gets.chomp.to_i
number.times do
us.dataHash us.userData,us.userName
end

us.userRequest
us.nameRequest
us.userHash.each {|id,name|us.printUser id}


