puts "Bienvenido al juego de piedra, papel o tijeras"
puts "Ingresa tu jugada(recuerda que debe ser piedra, papel o tijera)"
tirada_jugador = ARGV[0].to_s
tirada_jugador = tirada_jugador.downcase

puts "EL jugador juega: #{tirada_jugador}"

if tirada_jugador !="piedra" && tirada_jugador !="papel" && tirada_jugador !="tijera"
    puts("Argumento Invalido: Debe ser piedra, papel o tijera")
else
    
    tirada_maquina = Random.new
    # puts "#{tirada_maquina}"
    tirada_maquina = tirada_maquina.rand(1..3);
    # puts "#{tirada_maquina}"

    if tirada_maquina == 1
        jugada_maquina = "piedra"
    elsif tirada_maquina == 2
        jugada_maquina = "papel"
    else
        jugada_maquina = "tijera"
    end        

    puts(" La maquina Juega: #{jugada_maquina}")
    # puts "#{tirada_maquina}"

    if tirada_jugador == "piedra" && jugada_maquina == "tijera" 
    puts("Felicitaciones, has ganado")
elsif tirada_jugador == "piedra" && jugada_maquina =="papel"
    puts("Lamentablemente has sido derrotado por la I.A")
elsif tirada_jugador == "piedra" &&  jugada_maquina =="piedra"
    puts("Es un empate")   
    end    
    
    if tirada_jugador == "papel" && jugada_maquina == "piedra" 
        puts("Felicitaciones, has ganado")
elsif tirada_jugador == "papel" && jugada_maquina =="tijera"
        puts("Lamentablemente has sido derrotado por la I.A")
elsif tirada_jugador == "papel" &&  jugada_maquina =="papel"
        puts("Es un empate")       
    end

    if tirada_jugador == "tijera" && jugada_maquina == "papel" 
    puts("Felicitaciones, has ganado")
elsif tirada_jugador == "tijera" && jugada_maquina =="piedra"
    puts("Lamentablemente has sido derrotado por la I.A")
elsif tirada_jugador == "tijera" &&  jugada_maquina =="tijera"
    puts("Es un empate")       
    end

end    


