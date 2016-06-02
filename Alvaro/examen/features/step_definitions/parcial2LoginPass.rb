Given(/^dado que mi nombre de usuario es (\w+)$/) do |nombre|
@nombre=nombre
end

Given(/^mi password  es (\d+)$/) do |password|
 @password=password
end

When(/^cuando  presiono login$/) do
 puts""
end

Then(/^aparece mi mensaje (\w+)$/) do |message|

	case @nombre.to_s

  when "alvaro" then  @resul=Comparador.has @nombre,@password
  when "jorge" then @resul=Comparador.has @nombre,@password
  when "bruno" then @resul=Comparador.has @nombre,@password
 	
  end
   puts "#{@resul}kjshdkjhas#{message}"
   puts @resul
    expect(@resul).to eq(message.to_s) 

  
end


