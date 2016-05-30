Feature: como ususario quiero validar todos los datos
		al registrarme 

#Scenario: validar mi zipCode  
#Given  dado que introduzco mi zipCode 	 
#When   mi zipCode es "1234"
#Then mi valor es correcto 

#Scenario: validar el Username
#Given dado que introduzco mi Username
#When  el Username es "alvaro" 
#Then el Username es correcto 

#Scenario: validar el Country
#Given dado que introduzco mi Country
#When  el Country es "bolivia" 
#Then el country "existe"

Scenario: validar mis datos
Given dado que introduzco mis datos 
When cuando introduzco 0123 en mi ZipCode
And "nombre" en el campo Username
And "Pais" en el campo country
Then  mis ZipCOde es correcto 
And mi nombre es correcto 
And mi country es el correcto



