//
//  main.swift
//  Aufgabe_05
//
//  Created by Simon Herzog on 12.03.21.
//

import Foundation

//Funktion um ein gleichschenkliges Dreieck je nach eingegebener Höhe zu generieren
func createTriangle() {
    //Konstante height nimmt eingelesenen Wert entgegen und legt die Anzahl der Stern-Reihen fest
    print("Bitte geben Sie die Höhe des Dreiecks ein: ", terminator: "")
    let height = Int(readLine()!)!
    
    //Var spaces hält die Anzahl der notwendigen Leerzeichen für die aktuell ausgegebene Stern-Reihe
    var spaces = height - 1
    //Var stars hält die Anzahl der Sterne für die aktuelle Stern-Reihe
    var stars = 1
    
    //hier legt height die Anzahl der Schleifendurchläufe, welche der Anzahl der Stern-Reihen entspricht, fest
    for _ in 1...height{
        //direkte Ausgabe der aktuellen Stern-Reihe: zuerst werden der String für die Leerzeichen erstellt und mit dem String für die Sterne verknüpft. Zuletzt wird ein Zeilenumbruch hinzugefügt
        //Für String() wird der Initialisierer genutzt, der es erlaubt, einen Character hier " " und "*" in beliebiger Anzahl über das Argument count zu generieren
        print(String(repeating: " ", count: spaces) + String(repeating: "*", count: stars) + "\n")
        //hier werden die Leerzeichen um eins reduziert, da mit jeder Reihe die Leerzeichen, von oben nach unten, um eins weniger werden
        spaces -= 1
        //hier werden die Sterne um 2 erhöht, da mit jeder Reihe die Sterne, von oben nach unten, um zwei mehr werden
        stars += 2
    }
}
//Aufruf der Funktion
createTriangle()
