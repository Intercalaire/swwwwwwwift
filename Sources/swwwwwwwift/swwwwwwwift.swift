// let : constante, sa valeur ne change plus
// var : variable, sa valeur peut changer
// argument : valeur donnee au programme dans le terminal

import ArgumentParser

@main
struct swwwwwwwift: ParsableCommand {
    mutating func run() throws {
    }
}

struct Tache {
	let titre: String
	var estFinie: Bool = false

	func ligne() -> String {
		if estFinie {
			return "[x] \(titre)"
		} else {
			return "[ ] \(titre)"
		}
	}
}

struct ListeTaches {
	var taches: [Tache] = []

	mutating func ajouter(titre: String) {
		let tache = Tache(titre: titre)
		taches.append(tache)
	}
}
