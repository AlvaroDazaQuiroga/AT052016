def celciusToFahrenheit celcius
	fahrenheit=(((9*celcius)/5)+32)
end
def fahrenheitTocelcius fahrenheid
	 celcius=((5*(fahrenheid-32))/9)
	 return celcius
end

puts celciusToFahrenheit 40
puts fahrenheitTocelcius 104
