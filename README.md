# EMO Go Home

Ein kleiner Roboter auf dem Bildschirm, inspiriert von EMO. Man sieht nur seine leuchtenden Augen. Man redet einfach mit ihm, ohne Tasten. Er ist eine kleine KI: Er beantwortet Fragen, kennt das Wetter und kann im Internet nachschauen. Und er kann den berühmten Trick: „Emo, Hände hoch!“ → er hebt die Hände (ohne Arme), „Peng!“ → er wird im Auge getroffen oder weicht aus.

## Öffnen

**https://wolfiebu-ship-it.github.io/Emo-Go-Home/**

Seite öffnen, Mikrofon erlauben, losreden. Es gibt keine Knöpfe und keine Einstellungen. Funktioniert in Safari (iPhone, iPad, Mac) und in Chrome oder Edge.

- Browser spielen erst Ton ab, wenn man die Seite einmal berührt hat. Wenn EMO „Tipp mich einmal an“ sagt, einmal auf sein Gesicht tippen.
- Am iPhone muss die Diktierfunktion an sein (Einstellungen → Allgemein → Tastatur → Diktierfunktion), und der Stummschalter muss aus sein.

**Ohne Extra** kennt EMO Witze (immer andere), das Wetter, Uhrzeit, Rechnen und schlägt Wissensfragen bei Wikipedia nach.

**Mit Claude-Gehirn** redet er über alles und sucht im Internet. Dafür EMO einmal mit diesem Link öffnen (Schlüssel von https://console.anthropic.com/settings/keys):

`https://wolfiebu-ship-it.github.io/Emo-Go-Home/#key=DEIN-SCHLÜSSEL`

Der Schlüssel wird nur auf dem Gerät gespeichert und sofort aus der Adresse entfernt. Mit `#ort=Kassel` kann man den Wohnort für das Wetter ändern (Standard: Frankfurt am Main).

## Was man sagen kann

| Du sagst oder machst | EMO macht |
| --- | --- |
| Irgendeine Frage („Wie wird das Wetter morgen?“, „Wie groß ist die Sonne?“, „Wer hat gestern gewonnen?“) | antwortet als KI, mit Wetter-Daten und Websuche |
| „Emo, Hände hoch!“ oder Fingerpistole in die Kamera zeigen | hebt sofort ängstlich die Hände |
| „Peng!“, „Bang!“, „Boom!“ oder Fingerpistole hochzucken lassen | wird ins Auge getroffen (Riss, X-Augen, kippt um) oder weicht aus („Daneben!“) |
| „Hände runter“ | nimmt die Hände runter |
| „Erzähl einen Witz“ | erzählt jedes Mal einen anderen Witz |
| „Tanz mal“, „Sing was“ | tanzt oder singt |
| „Gute Nacht“ / „Wach auf“ | schläft ein / wacht auf |
| „Sei still“ | hört auf zu reden |
| „Vergiss alles“ | fängt ein neues Gespräch an |
| „Kamera aus“ / „Kamera an“ | schaltet die Fingerpistolen-Erkennung aus oder an |

## Stimme

EMO hat eine eigene Roboter-Kinderstimme. Sie wird direkt im Browser erzeugt (eSpeak, Datei `voice/mespeak-de.js`) und mit Roboter-Effekten verfremdet.

## Technik

- `index.html` – alles: Gesicht, Animationen, Zuhören, Gehirn, Kamera
- `voice/` – Sprachausgabe (meSpeak/eSpeak, GPL-3.0, siehe `voice/LICENSE.md`)
- Gehirn: ohne Schlüssel eigene Regeln, Wetter (Open-Meteo) und Wikipedia; mit Schlüssel Claude (Anthropic API) mit Websuche und Wetter-Werkzeug
- Fingerpistole: MediaPipe Hand-Erkennung, die Kamerabilder bleiben auf dem Gerät
