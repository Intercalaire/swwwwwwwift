// let : constante, sa valeur ne change plus
// var : variable, sa valeur peut changer
// argument : valeur donnee au programme dans le terminal

import ArgumentParser

@main
struct swwwwwwwift: ParsableCommand {
    @Argument var prenom: String
    @Option var age: Int
    @Option var taille: Double
    @Flag var aimeLeCode = false

    mutating func run() throws {
        print("Bonjour, je suis \(prenom) et j'ai \(age) ans.")

        if aimeLeCode {
            print("j'aime le code")
        } else {
            print("je n'aime pas le code")
        }

        let phrase = descriptionTaille(taille: taille)
        print(phrase)
    }
}

func descriptionTaille(taille: Double) -> String {
    if taille <= 1.00 {
        return "tu es minuscule"
    } else if taille < 1.85 {
        return "tu es plus petit que moi"
    } else {
        return "tu es plus grand que moi"
    }
}
