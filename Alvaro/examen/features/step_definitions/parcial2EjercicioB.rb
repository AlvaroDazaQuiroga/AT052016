When(/^cuando lo busco en el inventario \"([a-zA-Z]*)\"$/) do |producto|
 @objeto=producto
end

Then(/^un mensaje \"(.*)\"$/) do |mensaje|
  @resp=Inventario.encontrar @objeto

  expect(@resp).to eq(mensaje.to_s)
end
