

# Nested Arrays 2

# En este ejercicio vamos a llevar la creación de arrays y también hashes a un nivel más elevado.

# Intenta comprender el siguiente método y dime si puedes, antes de correrlo saber que regresará. 
# Te servirá descomponerlo por partes para poder analizarlo y jugar con los argumentos en cada segmento.

# abecedario = ('A'..'Z').last(20)
# p que_sera = Array.new(3) { abecedario.pop(2) }

#Lo que da :
# irb(main):001:0> abecedario = ('A'..'Z').last(20)
# => ["G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
# "U", "V", "W", "X", "Y", "Z"]
# irb(main):002:0> p que_sera = Array.new(3) { abecedario.pop(2) }
# [["Y", "Z"], ["W", "X"], ["U", "V"]]
# => [["Y", "Z"], ["W", "X"], ["U", "V"]]


# Objetivos Académicos
# Generar arrays y hashes dinamicamente
# Utilizar bloques y los métodos nativos de ruby para agilizar la generación de código
# Combinar ciclos, condiciones para hacer dinámico el acceso a arrays y hashes
# Actividades
# Daremos un nuevo paso en nuestro juego de Gato. Ya teniendo el tablero y sabiendo crearlo ahora
#  queremos crear un método que cree tableros, pero que cada vez estos sean diferentes.

# Existen muchas maneras para crear este método
# Crea dos implementaciones diferentes
# Intenta que la segunda sea compacta, elegante y COMPRENSIBLE.
# Seguramente tus métodos estan bien pero no son muy realistas, crea un método que contenga el numeró 
# real de "X" y "O". Cinco y cuatro dependiendo con cual empieces y piensa también en como crear una 
# prueba que garantice que esto suceda.

# Convertir nested arrays en hashes
# Intenta convertir la tabla del ejercicio pasado en un array donde cada persona sea un hash. Para 
# ayudarte existe un método que facilita este proceso pero requiere que tu array de arrays este en 
# cierto formato.

# Hash Docs

# Ejemplo:

# [{"Nombre"=>"Rodrigo García", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero",
#  "Calificaciones"=>[9, 9, 7, 6, 8]},...
# Crea cinco pruebas donde verifiques que puedes acceder a la información y que es correcta.
########################################################################################################
 def gato()
  puts  " "
  puts "GATO"
  puts  " "
  gato = ["X", "O"]
  play = Array.new(3) { Array.new(3) }
 for fila in 0..2 
 for columna in 0..2
    opc = gato.shuffle
      play[ fila][columna]= opc[0]
  end 
end
for fila in 0..2
for columna in 0..2
    value = play[fila][columna]
    print "|#{value}|"
      if columna == 2
        print "\n"
      end 
    end
  end
end 
gato()
puts ""
puts ""

puts  "                                                HASH                                            "
puts ""
tabla = []
table = [["Nombre", "Rodrigo Garcia"],["Edad", 13], ["Genero", "Masculino"], ["Grupo", "Primero"], ["Calificaciones", [9, 9, 7, 6, 8]]],

        [["Nombre", "Fenanda Gonzalez"],["Edad", 12], ["Genero", "Femenino"], ["Grupo", "Tercero"], ["Calificaciones", [6, 9, 8, 6, 8]]],

        [["Nombre", "Luis Perez"],["Edad", 12], ["Genero", "Masculino"], ["Grupo", "Primero"], ["Calificaciones", [8, 7, 7, 9, 8]]],

        [["Nombre", "Ana Espinosa"],["Edad", 14], ["Genero", "Femenino"], ["Grupo", "Segundo"], ["Calificaciones", [9, 9, 6, 8, 8]]],

        [["Nombre", "Pablo Moran"],["Edad", 11], ["Genero", "Masculino"], ["Grupo", "Segundo"], ["Calificaciones", [7, 8, 9, 9, 8]]]       
tabla = []
table.each { |i| tabla << Hash[i]}
p tabla
       







