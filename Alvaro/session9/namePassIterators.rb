
	def insertData
		flag=nil
		while flag==nil do
			puts "insert name this has to be: ej(alavro_123 in any order )"
			name=gets.chomp.to_s
			flag=name=~/(?=.*[a-z])(?=.*[0-9])(?=.*[_])/				
		end 	
	end
	def insertPassword
		flag=nil
		while flag==nil do
			puts "Insert the password: ej(alvaro123DAZA)"
			pass=gets.chomp.to_s
			flag=pass=~/(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{8,16}/
		end 	
	end

	def insertMail
		flag=nil
		while flag==nil do
			puts "insert your email ej(alvaro123@fundacion2.org) )"
			mail=gets.chomp.to_s

		flag=mail=~/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/
		end
	end
insertData
insertPassword
insertMail