p1=0
p2=0
def menu1
    puts 'jugador 1'
    puts '1-> piedra'
    puts '2-> papel'
    puts '3-> tijeras'
    puts '4-> salir'
    p1=gets.chomp.to_i
end
def menu2
    puts 'jugador 2'
    puts '1-> piedra'
    puts '2-> papel'
    puts '3-> tijeras'
    puts '4-> salir'
    p2=gets.chomp.to_i
end
def player1(p1)
    case p1
    when p1==4
        puts "adios"
    when p1!=1 ||p1!=2||p1!=3
        puts 'opcion invalida'
        puts menu1
    end  
end
def player2(p2)
    case p2
    when p2==4
        puts "adios"
    when p2!=1 ||p2!=2||p2!=3
        puts 'opcion invalida'
        puts menu2
    end  
end
def ppt(p1, p2)
    if p1==p2
        puts "empate"
    else
        p1=p1*2
        p2=p2*2
        case p1 p2
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
end

#menu1
p1=menu1
player1(p1)
#menu2
p2=menu2
player2(p2)
ppt(p1, p2)