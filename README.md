# EMO Go Home

Ein kleiner Roboter auf dem Bildschirm, inspiriert von EMO. Man sieht nur seine leuchtenden Augen. Man redet einfach mit ihm, ohne Tasten. Er ist eine kleine KI: Er beantwortet Fragen, kennt das Wetter und kann im Internet nachschauen. Und er kann den berühmten Trick: „Emo, Hände hoch!“ → er hebt die Hände (ohne Arme), „Peng!“ → er wird im Auge getroffen oder weicht aus.

## Öffnen

**https://wolfiebu-ship-it.github.io/Emo-Go-Home/v7/**

Jede neue Version bekommt einen eigenen Link (`v7`, `v8`, …), damit der Browser keine alte Version zeigt. Neue Version anlegen: `./release.sh 8`.

Seite öffnen, bei der Mikrofon-Frage „Erlauben“ tippen und losreden. Es gibt keine Knöpfe und keine Einstellungen.

- Auf dem iPhone und in Safari hört EMO mit seiner **eigenen Spracherkennung** zu. Dafür braucht man weder Siri noch die Diktierfunktion, nur die normale Mikrofon-Frage von Apple.
- In Chrome und Edge benutzt er die Spracherkennung des Browsers.
- Beim allerersten Öffnen lädt EMO seine Stimme und seine Ohren (zusammen etwa 100 MB). Am besten im WLAN. Danach geht es schnell.
- Falls der Browser Ton erst nach einer Berührung erlaubt, sagt EMO „Tipp mich einmal an“.

**Ohne Extra** kennt EMO Witze (immer andere), das Wetter, Uhrzeit, Rechnen und schlägt Wissensfragen bei Wikipedia nach.

**Mit Claude-Gehirn** redet er über alles und sucht im Internet. Dafür EMO einmal mit diesem Link öffnen (Schlüssel von https://console.anthropic.com/settings/keys):

`https://wolfiebu-ship-it.github.io/Emo-Go-Home/v7/#key=DEIN-SCHLÜSSEL`

Der Schlüssel wird nur auf dem Gerät gespeichert und sofort aus der Adresse entfernt. Mit `#ort=Kassel` kann man den Wohnort für das Wetter ändern (Standard: Frankfurt am Main).

## Was man sagen kann

| Du sagst oder machst | EMO macht |
| --- | --- |
| Irgendeine Frage („Wie wird das Wetter morgen?“, „Wie groß ist die Sonne?“, „Wer hat gestern gewonnen?“) | antwortet als KI, mit Wetter-Daten und Websuche |
| „Emo, Hände hoch!“ oder Fingerpistole in die Kamera zeigen | hebt sofort ängstlich die Hände |
| „Peng!“, „Bang!“, „Boom!“ (jeder kurze Ruf, wenn die Hände oben sind) oder Fingerpistole hochzucken lassen | wird ins Auge getroffen (Riss, X-Augen, kippt um) oder weicht aus („Daneben!“) |
| „Hände runter“ | nimmt die Hände runter |
| „Erzähl einen Witz“ | erzählt jedes Mal einen anderen Witz |
| „Tanz mal“, „Sing was“ | tanzt oder singt |
| „Gute Nacht“ / „Wach auf“ | schläft ein / wacht auf |
| „Emo, mach Untertitel an“ / „Untertitel aus“ | zeigt an, was EMO sagt und was er gehört hat (normalerweise aus) |
| „Sei still“ | hört auf zu reden |
| „Vergiss alles“ | fängt ein neues Gespräch an |
| „Kamera aus“ / „Kamera an“ | schaltet die Fingerpistolen-Erkennung aus oder an |

## Stimme

EMO spricht mit einer natürlichen, neuronalen Stimme (Piper), die direkt im Browser erzeugt und zu einer Kinderstimme umgeformt wird. Ohne Internet-Dienst und ohne Siri.

## Technik

- `index.html` – alles: Gesicht, Animationen, Zuhören, Gehirn, Kamera
- `voice/` – Stimme (Piper-Stimme + ONNX Runtime + espeak-ng)
- `listen/` – eigene Spracherkennung (Vosk, deutsches Modell)
- Lizenzen und Herkunft: `voice/LICENSE.md`
- Gehirn: ohne Schlüssel eigene Regeln, Wetter (Open-Meteo) und Wikipedia; mit Schlüssel Claude (Anthropic API) mit Websuche und Wetter-Werkzeug
- Fingerpistole: MediaPipe Hand-Erkennung, die Kamerabilder bleiben auf dem Gerät
