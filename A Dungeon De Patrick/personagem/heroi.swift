struct Personagem {
    var nome : String
    var idade : String
    var forca : Int
    var destreza : Int
    var constituicao : Int
    var inteligencia : Int
    var sabedoria : Int
    var carisma : Int

    func bonus(_ atributo: Int) -> Int {
        return (atributo - 10) / 2
    }

    var bonusFor: Int { bonus(forca) }
    var bonusDes: Int { bonus(destreza) }
    var bonusCon: Int { bonus(constituicao) }
    var bonusInte: Int { bonus(inteligencia) }
    var bonusSab: Int { bonus(sabedoria) }
    var bonusCar: Int { bonus(carisma) }
}
