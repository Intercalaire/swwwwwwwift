import Testing
@testable import swwwwwwwift

@Test func nouvelleligneTacheFinieTacheNestPasFinie() {
	let tache = Tache(titre: "Faire les courses")
	#expect(tache.ligne() == "[ ] Faire les courses")
}

@Test func ligneTacheFinie() {
	var tache = Tache(titre: "La tache est faite")
	tache.estFinie = true
	#expect(tache.ligne() == "[x] La tache est faite")
}

@Test func nouvelleListeEstVide() {
	let liste = ListeTaches()
	#expect(liste.taches.isEmpty)
}

@Test func ajouterUneTache() {
	var liste = ListeTaches()
	liste.ajouter(titre: "Faire les courses")
	#expect(liste.taches.count == 1)
	#expect(liste.taches[0].titre == "Faire les courses")
}
