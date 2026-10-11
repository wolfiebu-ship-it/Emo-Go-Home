# EMO Go Home

Ein kleiner Roboter auf dem Bildschirm, inspiriert von EMO. Man sieht nur seine leuchtenden Augen. Man redet einfach mit ihm, ohne Tasten. Er ist eine kleine KI: Er beantwortet Fragen, kennt das Wetter und kann im Internet nachschauen. Und er kann den berühmten Trick: „Emo, Hände hoch!“ → er hebt die Hände (ohne Arme), „Peng!“ → er wird im Auge getroffen oder weicht aus.

## Öffnen

**https://wolfiebu-ship-it.github.io/Emo-Go-Home/v14/**

Jede neue Version bekommt einen eigenen Link (`v14`, `v15`, …), damit der Browser keine alte Version zeigt. Neue Version anlegen: `./release.sh 15`.

Seite öffnen, bei der Mikrofon-Frage „Erlauben“ tippen und losreden. Es gibt keine Knöpfe und keine Einstellungen.

- EMO benutzt zuerst die Spracherkennung des Geräts (Apple oder Google), weil die am genauesten ist.
- Geht die nicht (zum Beispiel ohne Siri/Diktierfunktion), schaltet er von selbst auf seine **eigene Spracherkennung** um. Dafür braucht man nur die normale Mikrofon-Frage.
- Beim allerersten Öffnen lädt EMO seine Stimme und seine Ohren (zusammen etwa 150 MB). Am besten im WLAN. Danach geht es schnell.
- Falls der Browser Ton erst nach einer Berührung erlaubt, sagt EMO „Tipp mich einmal an“.

**Ohne Extra** hat EMO ein eigenes **Wissensbuch** (`brain/wissen.js`, über 400 Fakten und 90 Hauptstädte: Tiere, Weltall, Erde, Körper, Warum-Fragen, Erfindungen, Geschichte, Feiertage, Schule, Sport, Essen, Gefühle und Fragen über ihn selbst). Außerdem kennt er Witze (immer andere), das Wetter, Uhrzeit und Rechnen. Was nicht im Wissensbuch steht, schlägt er bei Wikipedia nach. Neue Fakten kann man einfach in `brain/wissen.js` dazuschreiben.

**Mit Claude-Gehirn** redet er über alles und sucht im Internet. Dafür EMO einmal mit diesem Link öffnen (Schlüssel von https://console.anthropic.com/settings/keys):

`https://wolfiebu-ship-it.github.io/Emo-Go-Home/v14/#key=DEIN-SCHLÜSSEL`

Der Schlüssel wird nur auf dem Gerät gespeichert und sofort aus der Adresse entfernt. Mit `#ort=Kassel` kann man den Wohnort für das Wetter ändern (Standard: Frankfurt am Main).

## Was man sagen kann

| Du sagst oder machst | EMO macht |
| --- | --- |
| Irgendeine Frage („Wie wird das Wetter morgen?“, „Wie groß ist die Sonne?“, „Wer hat gestern gewonnen?“) | antwortet als KI, mit Wetter-Daten und Websuche |
| „Emo, Hände hoch!“ oder Fingerpistole in die Kamera zeigen | hebt sofort die Hände, ohne etwas zu sagen |
| „Peng!“, „Bang!“, „Boom!“, sehr lauter Knall (wenn die Hände oben sind) oder Fingerpistole hochzucken lassen | Zeitlupe! Entweder weicht er wie im Film knapp aus, oder die Kugel trifft sein Auge: es bekommt Risse und zerspringt in Glasscherben, das andere Auge weint, dann setzt er sich wieder zusammen |
| „Hände runter“ | nimmt die Hände runter |
| „Erzähl einen Witz“ | erzählt jedes Mal einen anderen Witz |
| „Zwei plus zwei“, „10 mal 5“, „hundert geteilt durch vier“ | rechnet (auch mit Zahlwörtern, Punkt vor Strich) |
| „Tanz mal“, „Sing was“ | tanzt oder singt |
| „Gute Nacht“ / „Wach auf“ | schläft ein / wacht auf |
| „Emo, mach Untertitel an“ / „Untertitel aus“ | zeigt an, was EMO sagt und was er gehört hat (normalerweise aus) |
| Reinreden, während EMO spricht | er wird leise und hört dir zu |
| Geräusche, Gemurmel, halbe Sätze | EMO bleibt ruhig und lässt dich ausreden, statt irgendwas zu sagen |
| „Was hast du gesagt?“, „Sag das nochmal“, „Wie bitte?“ | wiederholt seinen letzten Satz |
| Gerät schütteln | Kreisel-Augen, wird grün, Zunge hängt raus und wackelt, Schluckauf, ihm wird übel (am iPhone/iPad einmal auf EMO tippen und bei „Bewegung und Ausrichtung“ auf „Erlauben“ tippen) |
| „Emo, rede lauter“ / „leiser“ | stellt seine Lautstärke ein (merkt er sich) |
| „Achso“, „Okay“, „Ja“ … | nickt nur, sagt nichts |
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
