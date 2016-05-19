require 'singleton'
class Amazon 
	include Singleton
	def initialize
		@itemPrice={"gorra"=>15,"camisa"=>30,"pantalos"=>20}
		@itemQuantity={"gorra"=>5,"camisa"=>6,"pantalos"=>7}
		@itemsBuy=0
		@itemDiscount=0
		@nuevosPrecios={}
	end
	def buyItem
		p @itemPrice
		puts "que le gustaria comprar"
		item=gets.chomp.to_s
		puts "que cantidad ?"
		quantity=gets.chomp.to_i
		#itemQuantity.each{|item,value|
		#	if item==@itemQuantity.store(item,value-=quantity) end }
		if true==@itemQuantity.has_key?(item)
			
			@itemQuantity.update(@itemQuantity){ |item,value| value-=quantity }
			p @itemQuantity
		end

	end
		def defPrice
			
			
			@itemPrice.each do |key,value|
			 @nuevosPrecios.store key,value*@itemQuantity[key] 
			 end 
			puts "estos son los nuevos precios#{@nuevosPrecios}"
 			

			
		end

		

end
am=Amazon.instance
am.buyItem
am.defPrice
	
=begin
I think it would not make much difference when using singleton in this exercise especially
=end

