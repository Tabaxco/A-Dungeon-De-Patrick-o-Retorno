func agir(_ bonus: Int, _ dificuldade: Int) -> Resultado {
    let (_, resultadoRoll) = roll(face: 1, lados: 20, bonus: bonus)
    return checaResultado(resultadoRoll, dificuldade)
}
