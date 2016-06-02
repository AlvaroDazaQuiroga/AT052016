@todo2
Feature: buscando un producto 


@existe
Scenario: existe el producto 
Give dado que quiero encontrar un producto
When cuando lo busco en el inventario "manzanita" 
Then un mensaje "producto encontrado"

@no_existe
Scenario: el producto no existe
Give dado que quiero encontrar un producto
When cuando lo busco en el inventario "duraznito" 
Then un mensaje "producto no encontrado"
