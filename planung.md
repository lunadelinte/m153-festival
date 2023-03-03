# Projekt Festival-Datenbank

Für ein Musikfestival möchten wir eine Datenbank modellieren. Die Datenbank sollte vorallem  Artist- & Bühnemmanagement, Besucher- & Ticketmanagement und Personalmanagement beinhalten.

## Anforderungen


### Artist- & Bühnemmanagement

Um die Artists und die Auftritte zu managen haben wir uns gedacht, dass wir 3 Tabellen erstellen könnten:

- Bühne
- Artist
- Zeitschema

Diese stehen in einer Beziehung zueinander, so dass entweder der Zeitplan in einer 1-n Beziehung ist zu den beiden Tablellen, oder dass 2 Zwischentabellen vorhanden sind.

Die Zwischentabellen in einer identifizierenden Beziehung würden eine Doppelbuchung von Artists und Bühnen verhindern.
Sonst könnte man auch eine 3-Fache-Unique Anforderungen setzen zwischen Datum, Zeit, und fk_act, respektive zwischen Datum, Zeit und fk_bühne

### Besucher- & Ticketmanagement

Es würde Sinn machen, dass wir für die Besucher eine Tabelle erstellen. Diese Tabelle hat eine Beziehung zu der Tabelle Ticket wo wir auch die typ und dauer des Tickets notieren.

### Personalmanagement

Das Personal, hat eine eigene Tabelle, die in relation zu einer Tabelle Rolle stehen könnte. Somit können wir einfach eine übersicht zu der Arbeitsaufteilung generieren. Zusätzlich können wir einen Arbeitsplan erstellen der in einer Beziehung zu der Mitarbeitertabelle steht und auch noch eine Beziehung zu einer Tabelle Schichten hat.


