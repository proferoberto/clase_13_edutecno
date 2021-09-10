# Ejercicio 3
# En una empresa se hacen pagos a proveedores decir a que proveedor se le ha 
# comprado mas y decir a que proveedor se le ha comprado menos. 
# Imprima en pantalla los dos casos. 

#Pasos
# 1) Tomar la los datos de los proveedores
#     1.1) Nombre del proveedor
#     1.2) Monto comprado
# 2) Buscar y Comparar entre todos lo proveedores para encontrar el maximo
# 3) Almacenar el maximo
# 4) Buscar y Comparar entre todos lo proveedores para encontrar el minimo
# 5) Almacenar el minimo
# 6) Mostrar la informacion en pantalla o en la consola

# proveedores = [
#     {nombre: "Labortios Genfar", monto_comprado: 300000},
#     {nombre: "Labortios MK", monto_comprado: 500000},
#     {nombre: "Labortios Abbot", monto_comprado: 400000}
# ]

sw = true
proveedores = []
while(sw==true)
    proveedor = {}
    puts "Digita el nombre del proveedor:"
    nombre = gets.chomp
    puts "Digita el monto comprado"
    monto_comprado = gets.chomp.to_i
    proveedor[:nombre] = nombre
    proveedor[:monto_comprado] = monto_comprado
    proveedores.push(proveedor)
    puts "Deseas ingresar mas proveedores ? s/n"
    opt = gets.chomp
    if opt == 'n'
        sw = false
    end
end

max = 0
index_max = -1
proveedores.each_with_index do |proveedor, index|
    if proveedor[:monto_comprado] > max
        max = proveedor[:monto_comprado]
        index_max = index
    end
end

puts "El proveedor que mas compras se le hicieron es: #{proveedores[index_max]}"

min = proveedores[0][:monto_comprado]
index_min = 0
(1...proveedores.size).each do |index|
    if proveedores[index][:monto_comprado] < min
        min = proveedores[index][:monto_comprado]
        index_min = index
    end
end

puts "El proveedor que menos compras se le hicieron es #{proveedores[index_min]}"