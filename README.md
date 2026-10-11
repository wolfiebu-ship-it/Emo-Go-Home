# EMO Go Home

Ein kleiner Roboter auf dem Bildschirm, inspiriert von EMO. Man sieht nur seine leuchtenden Augen. Man redet einfach mit ihm, ohne Tasten. Er ist eine kleine KI: Er beantwortet Fragen, kennt das Wetter und kann im Internet nachschauen. Und er kann den berühmten Trick: „Emo, Hände hoch!“ → er hebt die Hände (ohne Arme), „Peng!“ → er wird im Auge getroffen oder weicht aus.

## Öffnen

**https://wolfiebu-ship-it.github.io/Emo-Go-Home/**

Funktioniert in Safari (iPhone, iPad, Mac) und in Chrome oder Edge.

1. Beim ersten Mal den **Claude-API-Schlüssel** eintragen (von https://console.anthropic.com/settings/keys). Das ist EMOs Gehirn. Er bleibt nur auf deinem Gerät gespeichert.
2. Wohnort eintragen (für das Wetter).
3. Einmal auf **„EMO aufwecken“** tippen und Mikrofon und Kamera erlauben. Ab dann einfach reden.

Am iPhone muss die Diktierfunktion an sein (Einstellungen → Allgemein → Tastatur → Diktierfunktion), sonst kann Safari nicht zuhören. Den Stummschalter am iPhone ausmachen, sonst hört man EMO nicht.

## Was man sagen kann

| Du sagst oder machst | EMO macht |
| --- | --- |
| Irgendeine Frage („Wie wird das Wetter morgen?“, „Wie groß ist die Sonne?“, „Wer hat gestern gewonnen?“) | antwortet als KI, mit Wetter-Daten und Websuche |
| „Emo, Hände hoch!“ oder Fingerpistole in die Kamera zeigen | hebt sofort ängstlich die Hände |
| „Peng!“, „Bang!“, „Boom!“ oder Fingerpistole hochzucken lassen | wird ins Auge getroffen (Riss, X-Augen, kippt um) oder weicht aus („Daneben!“) |
| „Hände runter“ | nimmt die Hände runter |
| „Tanz mal“, „Sing was“ | tanzt oder singt |
| „Gute Nacht“ / „Wach auf“ | schläft ein / wacht auf |
| „Sei still“ | hört auf zu reden |
| „Vergiss alles“ | fängt ein neues Gespräch an |
| „Kamera aus“ / „Kamera an“ | schaltet die Fingerpistolen-Erkennung aus oder an |
| „Einstellungen“ oder lange auf den Bildschirm drücken | öffnet die Einstellungen |

## Stimme

EMO hat eine eigene Roboter-Kinderstimme. Sie wird direkt im Browser erzeugt (eSpeak, Datei `voice/mespeak-de.js`) und mit Roboter-Effekten verfremdet. In den Einstellungen kann man Tonhöhe, Tempo und Roboter-Klang einstellen oder auf die Gerätestimme oder „nur Piepser“ umschalten.

## Technik

- `index.html` – alles: Gesicht, Animationen, Zuhören, Gehirn, Kamera
- `voice/` – Sprachausgabe (meSpeak/eSpeak, GPL-3.0, siehe `voice/LICENSE.md`)
- Gehirn: Claude (Anthropic API) mit Websuche und einem Wetter-Werkzeug (Open-Meteo)
- Fingerpistole: MediaPipe Hand-Erkennung, die Kamerabilder bleiben auf dem Gerät
