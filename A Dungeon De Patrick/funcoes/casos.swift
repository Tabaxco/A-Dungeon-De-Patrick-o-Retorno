enum Resultado {
    case falha
    case falhaCritica
    case sucesso
    case sucessoCritico
}

func checaResultado(_ resultado: Int, _ dificuldade: Int) -> Resultado {
    if resultado == 1 {
        return .falhaCritica
    } else if resultado < dificuldade {
        return .falha
    } else if resultado == 20 {
        return .sucessoCritico
    } else {
        return .sucesso
    }
}
