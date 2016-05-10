class Person
	attr_reader :name
	attr_writer  :name,:message
	#attr_accessor :message
	def initialize ()
	
	end

end
person=Person.new()
person.name="PEPITO "
puts person.message="#{ person.name }have a nice day "




