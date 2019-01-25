func input() -> Int {
    let strData = readLine();
    
    return Int(strData!)!
}

var opperateur: Int
var numero1: Int
var numero2: Int
var result: Int

repeat {
    print("--- Menu ---"
        + "\n1. Addition"
        + "\n2. Soustraction"
        + "\n3. Multiplication"
        + "\n4. Division"
        + "\n5. Modulo"
        + "\n"
        + "\n Que voulez-vous ? (de 1 à 5)")
    opperateur = input()
    
    
    if (opperateur > 0 && opperateur < 6) {
        print("Entrez le premier nombre : ")
        numero1 = input()
        
        print("Entrez le deuxième nombre : ")
        numero2 = input()
        
        switch opperateur {
        case 1:
            result = numero1 + numero2
        case 2:
            result = numero1 - numero2
        case 3:
            result = numero1 + numero2
        case 4:
            result = numero1 / numero2
        case 5:
            result = numero1 % numero2
        default:
            result = 0
            print("Une erreur est survenue.")
        }
        print("")
        print("Le resultat est de \(result)")
        print("")
    }
    
} while opperateur < 1 || opperateur > 5

