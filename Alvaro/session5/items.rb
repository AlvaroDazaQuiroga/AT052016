class Item
	attr_reader :item_name,:quantity
	attr_writer :item_name,:quantity
def initialize ()
	
	#@quantity=quantity
end

#este es el metodo que esta haciendo de getter
#def item_name
#	@item_name
#	end

end

item=Item.new()
puts item.quantity=20
puts item.item_name="TV"
#puts item.quantity

