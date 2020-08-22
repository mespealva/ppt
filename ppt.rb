p1=0
p2=0
def menu
    puts 'jugador 1'
    puts '1-> piedra'
    puts '2-> papel'
    puts '3-> tijeras'
    puts '4-> salir'
    p1=gets.chomp.to_i
end

def player(p2)
    case p1
    when p1==1 ||p1==2||p1==3
        puts menu
        p2=gets.chomp.to_i
    when p1==4
        puts "adios"
    else
        puts 'opcion invalida'
        puts menu
    end  
end

def ppt(p1, p2)
    if p1==p2
        puts "empate"
    else
        p1=p1*2
        p2=p2*2
    end
    case p1
    when p1+p2==6
        puts "p2 gano" if p1<p2
        puts "p1 gano" if p2<p1
    when p1+p2==8
        puts "p1 gano" if p1<p2
        puts "p2 gano" if p2<p1
    when p1+p2==10
        puts "p1 gano" if p1<p2
        puts "p2 gano" if p2<p1
    end
end
def player2
    p2=gets.chomp.to_i
    case p1
    when p1==1 ||p1==2||p1==3
        ppt(p1, p2)
    when p1==4
        puts "adios"
    else
        puts 'opcion invalida'
        puts menu
    end  
end    


puts menu
p1=menu
p2=player1
