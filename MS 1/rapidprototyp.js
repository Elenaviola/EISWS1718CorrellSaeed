// Im Folgenden wird ein Risikofaktor mit dem Prototypen erläutert
//und Exit oder Fallback erklärt //

console.log("Wilkommen bei DocTimer!");
var userAnswer = confirm("Möchten Sie einen Termin buchen?");
if (userAnswer == true){
prompt("Bitte geben Sie den Namen ihres gewünschten Arztes ein:");
prompt("Um was für eine Art der Behandlung handelt es sich hierbei? (zb. Kontrolle, Blutabnahme, Sprechstunde..uvm);")
else { (exit);};
}

console.log("Ihr Arzt, hätte am Donnerstag den 9.11.2017 um 8:00Uhr den frühstmöglichen Termin, den Sie buchen könnten. ");
var userAnswer= confirm("Möchten Sie diesen Termin buchen?");
if (userAnswer == true){
console.log("Vielen Dank für die Buchung des Termines, sie bekommen in wenigen Minuten eine Bestätigungsmail, Gute Besserung!");
}
else {
console.log("Bitte wählen Sie einen freien Terminslot aus");
};
