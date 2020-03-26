require_relative "conf_reto5"

pr = Programa::Preguntas.new("preguntas_reto5.txt")

puts "Bienvenido al reto 5, Para jugar, solo ingresa la respuesta correcta para cada una de las definiciones"
sleep(3)
puts "Son #{pr.directorio_preguntas.length} preguntas"
sleep(2)
puts "Ready?"
sleep(1)
puts "Vamos!\n"
sleep(0.5)

 pr.directorio_preguntas.each_with_index  do |(pregunta, respuesta),index|

    puts "#{index+1}. #{pregunta}"
    print "Advina: "
    respuesta_user = ""

    while respuesta != respuesta_user

        respuesta_user = gets.chomp.upcase
        print "Incorrecto!, Intenta de nuevo: " if respuesta != respuesta_user

    end

    puts "Correcto!"
    sleep(1)
    print "Definicion: \n"
    sleep(1)
    puts pr.definiciones_respuestas[respuesta.to_sym]
    sleep(5)

    if index+1 < pr.directorio_preguntas.length
        puts "READY?"
        sleep(1)
        puts "Siguiente pregunta\n"
        sleep(1)
    else
        puts "Gracias por Jugar!\nGanaste!"
        sleep(1)
    end
 end
