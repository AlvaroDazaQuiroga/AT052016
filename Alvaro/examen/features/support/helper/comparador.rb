module Comparador
	$nombre={"alvaro"=>147,"jorge"=>369, "bruno"=>258}
    $mensaje={"alvaro"=>"Welcome" ,"jorge"=>"BienVenido" ,"bruno"=>"HOLAAA"}
    
	def Comparador.has nombre,pass
		resultado=""

		$nombre.each do |key, value|
			if key == nombre and pass.to_i == value.to_i then  resultado= $mensaje[key].to_s

		  end
			end
		return resultado

			
	end
end 