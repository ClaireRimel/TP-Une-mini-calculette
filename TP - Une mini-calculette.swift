
func input() -> Int {
    let strData = readLine();
    
    return Int(strData!)!
}


func actionChoice(){
    
    var opperateur: Int
    var numero1: Int
    var numero2: Int
    var result: Int
    
    repeat {
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
            
            if (opperateur > 0 && opperateur < 6){
                print("Entrez le premier nombre : ")
                numero1 = input()
                
                print("Entrez le deuxième nombre : ")
                numero2 = input()
                
                switch opperateur{
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
                    print("Faites votre choix entre 1 à 5")
                }
                print("\n"
                    + "\n Le resultat est de \(result)"
                    + "\n")
            }
            
        } while opperateur < 1 || opperateur > 5
        
    } while autreCalcule()
    
}

func autreCalcule() -> Bool {
    
    var autreCalculeQuest: Int
    
    print("\n Souhaitez-vous réaliser un autre calcule ?"
        + "\n1. Oui"
        + "\n2: Non")
    
    autreCalculeQuest = input()
    
    if autreCalculeQuest == 1 {
        return true
    } else {
        return false
    }
}

actionChoice()
