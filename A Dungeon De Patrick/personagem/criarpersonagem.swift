import Foundation

func criarCharacter() -> Personagem {

    let nome = "Patrick"

    print("Qual a idade do seu personagem?")
    let idade = readLine() ?? "18"

    print("Quanto você quer colocar em Força?")
    let forca = Int(readLine() ?? "") ?? 0

    print("Quanto você quer colocar em Destreza?")
    let destreza = Int(readLine() ?? "") ?? 0

    print("Quanto você quer colocar em Constituição?")
    let constituicao = Int(readLine() ?? "") ?? 0

    print("Quanto você quer colocar em Inteligência?")
    let inteligencia = Int(readLine() ?? "") ?? 0

    print("Quanto você quer colocar em Sabedoria?")
    let sabedoria = Int(readLine() ?? "") ?? 0

    print("Quanto você quer colocar em Carisma?")
    let carisma = Int(readLine() ?? "") ?? 0

    print("Por último...", terminator: " ")
    _ = readLine()
    print("Qual o seu nome?")
    _ = readLine()
    print("Não...", terminator: " ")
    _ = readLine()
    print("Você pode ter se esquecido, mas...", terminator: " ")
    _ = readLine()
    print("Seu nome é \(nome)!")

    return Personagem(
        nome: nome,
        idade: idade,
        forca: forca,
        destreza: destreza,
        constituicao: constituicao,
        inteligencia: inteligencia,
        sabedoria: sabedoria,
        carisma: carisma
    )
}
