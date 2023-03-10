# Projekt Festival-Datenbank

Für ein Musikfestival möchten wir eine Datenbank modellieren. Die Datenbank sollte vorallem  Artist- & Bühnemmanagement, Besucher- & Ticketmanagement und Personalmanagement beinhalten.

## Anforderungen


## Artist- & Bühnenmanagement

Um die Artists und die Auftritte zu managen haben wir uns gedacht, dass wir 3 Tabellen erstellen könnten:

- Bühne
- Artist
- Zeitschema

Diese stehen in einer Beziehung zueinander, so dass entweder der Zeitplan in einer 1-n Beziehung ist zu den beiden Tablellen, oder dass 2 Zwischentabellen vorhanden sind.

Die Zwischentabellen in einer identifizierenden Beziehung würden eine Doppelbuchung von Artists und Bühnen verhindern.
Sonst könnte man auch eine 3-Fache-Unique Anforderungen setzen zwischen Datum, Zeit, und fk_act, respektive zwischen Datum, Zeit und fk_bühne

### Anforderungen:

- Artist kann auf einer Bühne zu einer gewissen Zeit gebucht werden
- Es sollte keine Doppelbuchung von einem Artist geben können
- Es sollte keine Doppelbuchung von einer Bühne geben können

## Besucher- & Ticketmanagement

Es würde Sinn machen, dass wir für die Besucher eine Tabelle erstellen. Diese Tabelle hat eine Beziehung zu der Tabelle Ticket wo wir auch die typ und dauer des Tickets notieren.

### Anforderungen

- Ein Besucher hat ein Ticket in seinem Namen
- Der Besucher sollte nur an den Tagen für die er ein Ticket gekauft hat, Eintritt haben
- Es sollte VIP-Tickets geben die zutritt geben zu VIP-Bereichen
- Ein Besucher sollte nicht mehrere Tickets kaufen können die das gleiche Anbieten
- Ein Besucher sollte für Mehrere Leute ein Ticket kaufen können -> Person die in Rechnung gestellt wird kann Besucher sein, muss aber nicht unbedingt sein

## Personalmanagement

Das Personal, hat eine eigene Tabelle, die in Relation zu einer Tabelle Rolle stehen könnte. Somit können wir einfach eine Übersicht zu der Arbeitsaufteilung generieren. Zusätzlich können wir einen Arbeitsplan erstellen der in einer Beziehung zu der Mitarbeitertabelle steht und auch noch eine Beziehung zu einer Tabelle Schichten hat.

### Anforderungen

- Ein Mitarbeiter kann eine Rolle zugeteilt kriegen
- Die Mitarbeiter können auf Schichten aufgeteilt werden
- Ein Mitarbeiter sollte nicht doppelt gebucht werden können
- Ein Mitarbeiter sollte nur auf Schichten gebucht werden können die seiner Rollte entspricht
- Potentiell könnte ein Mitarbeiter eine Backuprolle haben, so dass er auch auf Schichten gebucht werden kann die nicht seiner Hauptrolle entsprechen
- Ein Mitarbeiter sollte mehrere Rollen füllen können?


## Erste graphische Darstellung

![](../uerberblick_erd.png)


## Use Cases

### Use case 1

#### **Umfang:** Festival-Datenbank
#### **Ebene:** Anwenderziel
#### **Primärakteur:** Personalmanager
#### **Stakeholder und Interessen:**

- Personalmanager: möchte einen klaren Überblick über das Personal und dessen Schichten, dessen Rollen und dessen Arbeitszeiten
- Personal: möchte genaue Angaben zu ihren Arbeitszeiten & Rollen
- Buchhaltung: Möchte genaue Angaben zu der Arbeitszeit für die Lohnrechnung
- Manager: Will eine reibungslosen Ablauf des Personalmanagements
- Unternehmen: Möchte einen effizienten einsatz des Personals haben
- Behörden: Wollen genaue Angaben zu den Arbeitszeiten, damit Steuertechnisch und Arbeitsgesetzlich alles kontrolliert werden kann

#### Abläufe

##### Schichtzuteilung:

- Manager teilt einem Mitarbeiter eine Schicht zu

##### Erfassung eines neuen Mitarbeiters:

- Manager erfasst einen neuen Mitarbeiter

##### Entfernen eines Mitarbeiters aus dem System:

- Mitarbeiter wird gekündet oder kündet und wird aus dem Sytem entfernt

##### Manager teilt einen Mitarbeiter als Reserve ein

- Mitarbeiter wird als Reserve eingeteilt

##### Anwesenheit notieren:

- Nach einer Schicht kann die Anwesenheit eines Mitarbeiters eingetragen werden
