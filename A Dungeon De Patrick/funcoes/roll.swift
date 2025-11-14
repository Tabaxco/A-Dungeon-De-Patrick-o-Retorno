func roll (face : Int, lados : Int, bonus : Int = 0) -> (String, Int) {

var resultados = Array<Int>()

    for _ in 1...face {
        let r: Int = Int.random(in: 1...lados)
        resultados.append(r)
    }

    let soma = resultados.reduce(0, +)
    let total = soma + bonus

    let texto: String

    if bonus > 0 {
         texto = "\(total) ⟵ \(resultados) \(face)d\(lados) + \(bonus)"
    } else {
        texto = "\(total) ⟵ \(resultados) \(face)d\(lados)"
    }

    return (texto, total)
}
