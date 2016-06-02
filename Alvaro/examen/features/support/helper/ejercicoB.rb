module Inventario

	$inventario=["auto","reloj","pelota","polera","manzanita"]
	def Inventario.encontrar objeto
			@resp="producto no encontrado"
		$inventario.each {|n| if n==objeto then   @resp="producto encontrado"  end }
		 
		 return @resp

	end
end