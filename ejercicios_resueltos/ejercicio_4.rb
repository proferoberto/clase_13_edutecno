# Ejercicio 4
# Elabore un programa que almacene los sueldos de los empleados de una empresa y 
# imprima en pantalla cual es el sueldo promedio.

# Pasos
# 1) Digitar la informacion de los empleados(nombre, sueldo)
# 2) Guardar la informacion de los empleados
# 3) Promedio -> suma todos los valores en un conjunto / entre la cantidad de elementos del conjunto

# empleados = [
#     {nombre: "roberto", sueldo: 3000000},
#     {nombre: "marcelo", sueldo: 5000000},
#     {nombre: "raul", sueldo: 8000000},
#     {nombre: "ximena", sueldo: 8500000}
# ]

def obtener_promedio(elementos, identificador)
    sum = 0 
    elementos.each do |elemento|
        sum = sum + elemento[identificador]
    end
    sum / elementos.size
end

# {nombre: "String", apellido: "String", sueldo: "Integer", peso: "Float"}
def leer_datos(estructura)
    data = {}
    estructura.each do |key, value|
        puts "Digita el valor de #{key.to_s}"

        #Primera version
        # if value == "String"
        #     elemento_almacenado = gets.chomp
        # else
        #     if value == "Integer"
        #         elemento_almacenado = gets.chomp.to_i
        #     else
        #         elemento_almacenado = gets.chomp.to_f
        #     end
        # end
        case value 
        when "String"
            elemento_almacenado = gets.chomp
        when "Integer"
            elemento_almacenado = gets.chomp.to_i
        else
            elemento_almacenado = gets.chomp.to_f
        end
        data[key] = elemento_almacenado
        
    end
    data
end

# Main
sw = true
empleados = []
while(sw==true)
    estructura = {nombre: "String", apellido: "String", sueldo: "Integer", peso: "Float"}
    empleado = leer_datos(estructura)
    empleados.push(empleado)
    puts "Deseas ingresar mas empleados ? s/n"
    opt = gets.chomp
    if opt == 'n'
        sw = false
    end
end
pp empleados
puts "El promedio de sueldo es #{obtener_promedio(empleados, :sueldo)}"

