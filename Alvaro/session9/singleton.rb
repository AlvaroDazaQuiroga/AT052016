require  "singleton"
class SingletonPractice
	attr_accessor :user
	include Singleton
	def initialize
	@user="guest"
	@message="Welcome to the city "
	@visitor=0
	@hashOfPeople={}

	end
	def addNewPeople
		puts "ingrese una nueva persona"
		@user=gets.chomp
		puts "ingrese un nuevo mensaje de bienvenida"
		@message=gets.chomp
		@hashOfPeople.store @user,@message
		@visitor*=1
		
	end
	
end

single=SingletonPractice.instance
single.addNewPeople
puts "last User #{SingletonPractice.instance.user}"
=begin
the only difference is that the variables change with instances
=end