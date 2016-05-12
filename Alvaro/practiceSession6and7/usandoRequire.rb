require_relative "module1"

class Coversacion
  include Saludos
  
  def metodo
  end


end
conver=Coversacion.new
puts conver.saludo1
