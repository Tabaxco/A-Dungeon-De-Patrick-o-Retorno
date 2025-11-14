func iniciar() {
    print("Ah... Então você estava aqui este tempo todo? Eu estive te procurando, sabia? Mas... Pelo visto você não se lembra.")
    print("Na verdade, aparentemente você não se lembra de nada.")

    var decisaoValida = false
    
    while !decisaoValida {

        print("""
        Que tal começarmos de novo?
        [1] - Sim
        [2] - Não
        """)
        
        if let decision = readLine(), let decisao = Int(decision) {
            switch decisao {
            case 1:
                decisaoValida = true
            case 2:
                print("Você não entendeu ainda? Você não tem escolha.")

            default:
                print("Escolha inválida. Escolha sim ou não.")
            }
        } else {
            print("Entrada inválida. Digite um número.")
        }
    }

    print("Ótimo! Vamos começar então!")
    print("Você possui os seguintes valores para distribuir: 15, 14, 13, 12, 10, 8")
    print("Escolha com sabedoria como distribuir eles entre seus atributos!")

    }

