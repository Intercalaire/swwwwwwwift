import Testing
@testable import swwwwwwwift

@Test func petiteTaille() {
    #expect(descriptionTaille(taille: 0.95) == "tu es minuscule")
}

@Test func tailleMoyenne() {
    #expect(descriptionTaille(taille: 1.60) == "tu es plus petit que moi")
}

@Test func grandeTaille() {
    #expect(descriptionTaille(taille: 1.90) == "tu es plus grand que moi")
}
