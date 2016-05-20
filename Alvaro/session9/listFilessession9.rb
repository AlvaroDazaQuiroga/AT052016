#file_example=File.open('test.txt','w+')

#file_example.write('line1')
#file_example.close
#file_example=File.open('test.txt')
#print file_example.read
#file_example.write('line1')
#file_example.close
#file_example=File.open('test.txt')
#print file_example.read
class ListaFile
	
	@fileList
def lista
	@destinos=["CBBA","SANTA CRUZ","LA PAZ","ORURO","POTOSI","TARIJA","CHIQUISACA","PANDO","BENI"]
	@fileList=File.open('lista.txt','w+')
	#@destinos=["CBBA","SANTA CRUZ","LA PAZ","ORURO","POTOSI","TARIJA","CHIQUISACA","PANDO","BENI"]

	@fileList.write("|USER      |PASSWORD|TRAVEL_DATE|DESTINATION|\n")
    100.times do |variable|
    	@fileList.write("|USER_#{variable}|    PASS_#{variable}  |#{dia=rand(1..30)} /#{mes=rand(1..12)}/2016|#{@destinos[rand(0..8)]} | \n")
    	
    end
     
    @fileList.close

end

def exist
	@destinos=["CBBA","SANTA CRUZ","LA PAZ","ORURO","POTOSI","TARIJA","CHIQUISACA","PANDO","BENI"]
	response=File.file?("lista.txt")
    puts response
	if response==false then
	lista	
	
	else
		puts "EL archivo ya existe .....agregando lista"
		@fileList=File.open("lista.txt",'a+')
		@fileList.write("|USER      |PASSWORD|TRAVEL_DATE|DESTINATION|\n")
       100.times do |variable|
    	@fileList.write("|USER_#{variable}|    PASS_#{variable}  |#{dia=rand(1..30)} /#{mes=rand(1..12)}/2016|#{@destinos[rand(0..8)]} | \n")
	    end
	
	  @fileList.close
		

     end
end
end
li=ListaFile.new
li.exist
