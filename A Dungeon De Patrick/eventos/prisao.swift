import Darwin

func prisao(personagem: Personagem) {
    print("Seus olhos se abrem enquanto seu corpo pula em susto repentino.")
    _ = readLine()
    print("Sua respiração ofegante denuncia o susto que você teve, mas ainda sim...")
    _ = readLine()
    print("Não se lembra exatamente sobre o que era o sonho.")
    _ = readLine()
    print("""
    Ao se acalmar um pouco, você percebe estar sentado em uma sala com suas paredes acinzentadas caindo aos pedaços. Quase 
    como uma cela de uma prisão.
    A temperatura do local está extremamente baixa fazendo com que ao respirar, seja possível ver uma "fumaça" saindo de sua 
    boca.
    Você não se lembra de como chegou ali, mas por algum motivo sente que deve avançar.
    """)
    
    pula()
    
    var conseguiuSair = false
    
    while !conseguiuSair {
        print("""
        [1] - Explorar a cela
        [2] - Gritar por socorro
        [3] - Desistir
        """)
        
        if let escolhajogador = readLine(), let escolhanum = Int(escolhajogador) {
            switch escolhanum {
            case 1:
                let resultado = agir(personagem.bonusInte, 10)
                switch resultado {
                case .sucesso, .sucessoCritico:
                    print("Você percebe que a sala nao tem nenhuma porta ou janela. Tudo que pode fazer é voltar a dormir.")
                    pula()
                    conseguiuSair = true
                case .falha, .falhaCritica:
                    print("Você se levanta e tenta procurar um meio de sair, mas tropeça e cai.")
                    pula()
                }
                
            case 2:
                print("Você grita por socorro...", terminator: " ")
                _ = readLine()
                print("sua voz ecoa por esta cela suja, fria e vazia...", terminator: " ")
                _ = readLine()
                print("Mas parece que desta vez, ninguém vai vir te buscar.")
                _ = readLine()
                pula()
                
            case 3:
                desista()
                
            default:
                print("Escolha inválida, tente novamente.")
            }
        }
    }
    
    var dormir = false
    print("Um sono profundo toma conta de você de repente.", terminator: " ")
    _ = readLine()
    print("Talvez seja um sinal...")
    
    while !dormir {
        print("""
        [1] - Lutar contra a vontade de dormir
        [2] - Se entregar ao sono
        """)
        
        if let option = readLine(), let optionnum = Int(option) {
            switch optionnum {
            case 1:
                let resultado = agir(personagem.bonusCon, 18)
                switch resultado {
                case .sucesso, .sucessoCritico:
                    print("Você consegue resistir...", terminator: " ")
                    _ = readLine()
                    print("Mas o sono é inevitável...")
                    pula()
                case .falha, .falhaCritica:
                    print("Você tenta resistir ao sono profundo, mas...", terminator: " ")
                    _ = readLine()
                    print("Você é incapaz.")
                    _ = readLine()
                    print("Seu corpo cede ao chao, e antes mesmo de notar, você está dormindo.")
                    _ = readLine()
                    pula()
                    dormir = true
                }
            case 2:
                print("Como um bom garoto, você se entrega ao sono. Sabe que nao pode resistir... É mais forte do que você.")
                pula()
                dormir = true
                
            default:
                print("Ocorreu um erro.")
            }
            
        }
    }
    
    var chorardormir = false
    
    while !chorardormir {
        print("Após algumas horas, você acorda novamente na mesma cela.")
        _ = readLine()
        print("A mesma cela velha e suja...", terminator: " ")
        print("Você sonhou com a mesma coisa de novo. Talvez você devesse...")
        _ = readLine()
        
        print("""
        [1] - Descarregar a frustracao
        [2] - Chorar até dormir
        [3] - Tentar lembrar
        """)
        
        if let opnum3 = readLine(), let opnum3num = Int(opnum3) {
            switch opnum3num {
            case 1:
                let resultado = agir(personagem.bonusFor, 12)
                switch resultado {
                case .sucesso, .sucessoCritico:
                    print("Você soca as paredes dessa sala em uma descar de frustacao...")
                    _ = readLine()
                    print("Você olha para as paredes da cela. Completamente destruídas agora, mas por algum motivo... Nao desmoronam.")
                    _ = readLine()
                    pula()
                    chorardormir = true
                case .falha, .falhaCritica:
                    print("Você soca as paredes da cela em um surto de raiva momentâneo...")
                    _ = readLine()
                    print("Mas nao acontece nada. Aparentemente você machucou feio as próprias maos...")
                    _ = readLine()
                    print("Olha toda essa bagunca... Você realmente fez besteira.")
                    pula()
                    chorardormir = true
                    
                }
            case 2:
                desista()
            
            case 3:
                let resultado = agir(personagem.bonusInte, 18)
                switch resultado {
                    case .sucesso, .sucessoCritico:
                        print("Você ainda se lembra, Patrick?")
                        _ = readLine()
                        print("Se lembra de quando ainda era feliz?")
                        _ = readLine()
                        print("Já faz um tempo...")
                        _ = readLine()
                        print("Né?")
                    chorardormir = true
                case .falha, .falhaCritica:
                    print("Você tenta se lembrar...")
                    _ = readLine()
                    print("Sua cabeca dói...")
                    print("Mas você é incapaz. Você se prendeu aqui há tanto tempo que mal consegue se lembrar direito.")
                    chorardormir = true
                }
                
            default:
                print("Erro inesperado")
            }
        }
    }
    
        print("Você pensa que nao precisa ser assim. Talvez se você voltar agora...")
        _ = readLine()
        print("Só talvez...")
        _ = readLine()
        print("'??? - Nao precisa se preocupar com nada disso, Patrick.' - diz uma voz tao doce quanto o mel.")
        _ = readLine()
        print("Você lembra do quanto dói lá fora?")
        
        
        print("""
        [1] - "Quem é você?!"
        [2] - "Eu poderia pelo menos tentar..."
        [3] - "Você tem razao..."
        """)
    
    if let opnum4 = readLine(), let opnum4num = Int(opnum4) {
        if opnum4num == 1 {
            print("Você nao se lembra de mim?")
            _ = readLine()
            print("'??? — Você pediu para que eu cuidasse de você depois... Daquilo.'")
            pula()
        }
        
        if opnum4num == 2 {
            print("'??? — Você nao deve! Você precisa permanecer aqui! Aqui é o seu lugar!")
            pula()
        }
        
        if opnum4num == 3 {
            print("'??? — Isso mesmo, Patrick... Você sabe que esta é a melhor decisao...'")
            _ = readLine()
            print("Você sente um abraco quente...")
            _ = readLine()
            print("Você precisa fugir, mas... Nao quer...?")
            _ = readLine()
            desista()
        }
    }
    
    print("""
    [1] - "Há quanto tempo estou aqui?"
    [2] - "O que aconteceu?"
    """)
    
    if let decisoesfinais = readLine(), let decisoesend = Int(decisoesfinais) {
        switch decisoesend {
            case 1:
                print("'??? — Por muito mais do que imagina.'")
                _ = readLine()
                print("'??? — Talvez mais do que possa se lembrar...'")
                _ = readLine()
        case 2:
            print("'??? — Você decidiu que esqueceria...'")
            _ = readLine()
            print("'??? — Agora deseja se lembrar?'")
            _ = readLine()
            print("""
                  [1] - Convencer a lembrar
                  [2] - Decidir continuar sem saber nada.
                  """)
            
            if let decisaolembrar = readLine(), let decisaonum = Int(decisaolembrar) {
                if decisaonum == 1 {
                    let resultado = agir(personagem.bonusCar, 20)
                    switch resultado {
                    case .sucesso, .sucessoCritico:
                        print("'??? — O mundo te machucou há muito atrás...'")
                        _ = readLine()
                        print("'??? — Você decidiu que queria viver sem dor alguma...'")
                        _ = readLine()
                        print("Desde entao somos só eu e você...")
                        pula()
                        _ = readLine()
                    case .falha, .falhaCritica:
                        print("'??? — Tentando me convencer a te contar o que te machucou?'")
                        _ = readLine()
                        print("'??? — Eu estou aqui pelo teu bem, apenas...'")
                        _ = readLine()
                        print("'??? — Nao quero que meu único amigo se machuque mais uma vez...'")
                    }
                }
            }
            
        default:
            print("Ocorreu um erro.")
        }
    }
    print("De repente... Uma porta surge na cela...")
    _ = readLine()
    print("Ou talvez ela sempre tenha estado ali...")
    _ = readLine()
    print("Talvez... Só talvez...")
    _ = readLine()
    print("Você a tenha ignorado todo este tempo.")
    
    print("""
    [1] - Tentar sair
    [2] - Ignorar a porta
    """)
    if let opending = readLine(), let opporta = Int(opending) {
        switch opporta {
        case 1:
            print("'??? — Nao!'")
            _ = readLine()
            print("'??? — Nao vou deixa-lo sair daqui!'")
            
            print("""
                  [1] - Tentar correr até a porta
                  [2] - Aceitar ficar
                  """)
            
            if let opcorrer = readLine(), let opficar = Int(opcorrer) {
                switch opficar {
                case 1:
                    let resultado = agir(personagem.bonusDes, 15)
                    switch resultado {
                        case .sucesso, .sucessoCritico:
                            print("Você dispara correndo!")
                            _ = readLine()
                            print("Aquela voz de repente toma uma forma... Sombria... Grotesca.")
                            _ = readLine()
                            print("'Aquilo é...")
                            _ = readLine()
                            print("Nojento!' - Você pensa.")
                    case .falha, .falhaCritica:
                            print("Você tenta correr em direcao a porta...")
                            _ = readLine()
                            print("Mas tropeca...")
                            _ = readLine()
                            print("O seu amigo de repente ganha uma forma... Iluminada... Linda.")
                            _ = readLine()
                            print("'É um anjo!' - Você pensa.")
                    }
                case 2:
                    print("Você vê a porta, mas decide ficar. Talvez o mundo lá fora realmente nao seja tao bom assim.")
                    _ = readLine()
                    print("Você sente um abraco morno e desconfiado.")
                    _ = readLine()
                    print("Você tomou a melhor decisao, Patrick...")
                    desista()
                    
                default:
                    print(" Ocorreu um erro.")
                }
        }
        case 2:
            print("Você escolhe... Ficar.")
            desista()
            
        default:
            print("")
        }
    }
    print("'??? — Nao me deixe, Patrick! Por favor!'")
    
    print("""
          [1] - Resistir
          """)
    if let opfinal = readLine(), let opfinalzinho = Int(opfinal) {
        switch opfinalzinho {
        case 1:
            let resultado = agir(personagem.bonusSab, 10)
            switch resultado {
            case .sucesso, .sucessoCritico:
                print("Você resiste aos avancos de seu amigo e chegar até a porta.")
                _ = readLine()
                print("Você olha aquela cela vazia uma última vez...")
                _ = readLine()
                print("Quanto tempo você perdeu aqui?")
                _ = readLine()
                print("Muito.")
                _ = readLine()
                print("'Talvez o mundo lá fora seja doloroso...'")
                _ = readLine()
                print("'Mas viver é sempre doloroso... É necessária muita coragem para viver.' - Você pensava.")
                _ = readLine()
                print("'Patrick — Eu quero testar, mais uma vez.'")
                _ = readLine()
                print("Patrick diz enquanto atravessa a porta, deixando a sua dungeon...")
                
            case .falha, .falhaCritica:
                print("Você falha em resistir aos avancos de seu amigo.")
                _ = readLine()
                print("Uma forte dor de cabeca toma conta de você.")
                _ = readLine()
                print("Você... Desiste?")
                desista()
            }
        default:
            print("Nananinanao")
        }
    }
    
    }
    
    


