# Use Case für Artistbucher in der Festival-Datenbank:

## Use-Case-Name:

- Artistbucher für Festival-Datenbank

## Umfang:

- Das System soll eine Artistbucher-Funktion für das Festival-Management-System bereitstellen, die es den Organisatoren ermöglicht, Künstler zu buchen und ihre Auftritte zu planen.

## Ebene:

- Das ist ein primärer Use-Case.

## Primärakteur:

- Der Primärakteur ist ein Festival-Organisator oder ein anderer autorisierter Mitarbeiter, der für die Buchung von Künstlern und die Planung ihrer Auftritte verantwortlich ist.

## Stakeholder und Interessen:

- Festival-Organisatoren: Sie möchten ein effizientes und zuverlässiges System zur Buchung von Künstlern und zur Planung ihrer Auftritte.
- Künstler: Sie möchten eine reibungslose Buchung und Planung ihrer Auftritte, um ihre Leistung optimal zu gestalten und ihre Fans zufrieden zu stellen.

## Vorbedingungen:

- Das Festival-Management-System ist eingerichtet und einsatzbereit.
- Der Primärakteur hat Zugang zum System und ist autorisiert, Künstler zu buchen und ihre Auftritte zu planen.

## Nachbedingungen:

- Die gebuchten Künstler und ihre Auftritte sind im System erfasst und können für die Planung und das Management des Festivals genutzt werden.

## Standardablauf:

1. Der Primärakteur wählt die Option "Artistbucher" im Festival-Management-System aus.
2. Das System zeigt eine Liste der verfügbaren Künstler an, aus der der Primärakteur wählen kann.
3. Der Primärakteur wählt den gewünschten Künstler aus der Liste aus.
4. Das System zeigt eine Liste der verfügbaren Bühnen und Zeitslots an, auf denen der Künstler auftreten kann.
5. Der Primärakteur wählt die gewünschte Bühne und den gewünschten Zeitslot aus.
6. Das System überprüft, ob die ausgewählte Bühne und der ausgewählte Zeitslot verfügbar sind und ob der Künstler zu dieser Zeit noch verfügbar ist.
7. Wenn die Bühne und der Zeitslot verfügbar sind und der Künstler zu dieser Zeit noch nicht gebucht ist, bestätigt das System die Buchung und fügt sie der Datenbank hinzu.
8. Das System aktualisiert die Verfügbarkeit des Künstlers und der Bühne in der Datenbank.

## Erweiterungen:

- Wenn die ausgewählte Bühne oder der ausgewählte Zeitslot nicht verfügbar ist oder der Künstler bereits zu dieser Zeit gebucht ist, zeigt das System eine entsprechende Fehlermeldung an und der Primärakteur kann eine andere Option auswählen.
- Die Buchung wird in der Datenbank gespeichert und kann später bearbeitet oder storniert werden.
- Die Künstler- und Bühnenpläne werden automatisch aktualisiert, um Doppelbuchungen zu vermeiden.
- Der Primärakteur kann zusätzliche Informationen, wie z.B. technische Anforderungen oder besondere Bedürfnisse des Künstlers, hinzufügen.
- Das System kann eine Bestätigungsmail an den Künstler senden, um die Buchung zu bestätigen.

## Spezielle Anforderungen:

- Das System muss in der Lage sein, eine Doppelbuchung von Künstlern und Bühnen zu verhindern.
- Das System sollte eine Übersicht über alle gebuchten Künstler und ihre Auftritte bieten.
- Das System sollte es dem Primärakteur ermöglichen,mehrere Künstler und ihre Auftritte auf einmal zu buchen oder zu ändern.
- Das System sollte es dem Primärakteur ermöglichen, die Verfügbarkeit von Künstlern und Bühnen schnell und einfach zu überprüfen.

## Liste der Technik- und Datenvariationen:

- Das System nutzt MySQL für die Datenbank

## Häufigkeit des Auftretens:

- Die Artistbucher-Funktion wird von den Festival-Organisatoren regelmässig genutzt, um Künstler zu buchen und ihre Auftritte zu planen.
- Die Häufigkeit hängt von der Grösse des Festivals und der Anzahl der gebuchten Künstler ab.

## Verschiedenes:

- Die Artistbucher-Funktion ist ein wichtiger Bestandteil des Festival-Management-Systems und trägt wesentlich zur erfolgreichen Planung und Durchführung des Festivals bei.
- Durch die Nutzung des Systems können Doppelbuchungen vermieden und die Verfügbarkeit von Künstlern und Bühnen effektiv verwaltet werden.
