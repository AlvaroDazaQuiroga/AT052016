
class Father
	@@money =100
	def self.money
		@@money

	end
end
 
 #puts clase hijo
 class Sergio < Father
 	attr_accessor :take
    def initialize   # inicializada en el constructor 
    	@take=10
    end	

 	def money
 	@@money=@@money-@take	
 	end
 	
 end

 class Bruno < Father
 	$take1= 20
 	def self.money
 	@@money= @@money-$take1
    end

 end


 class Alvaro < Father
 	$take2= 30
 	def self.money
 	@@money= @@money-$take2
   end
 end

 puts Father.money
# puts "SERGIO TOMO #{$take}"
 puts "SERGIO TOMO #{Sergio.new.take}"
 puts Sergio.new.money
 puts "BRUNO TOMO #{$take1}"
 puts Bruno.money
puts "ALVARO TOMO #{$take2}"
 puts Alvaro.money

 puts " PADRE TIENE #{ Father.money }"



