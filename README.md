# EMO Go Home

Ein kleiner Roboter auf dem Bildschirm, inspiriert von EMO. Man sieht nur seine leuchtenden Augen. Man redet einfach mit ihm, ohne Tasten. Er ist eine kleine KI: Er beantwortet Fragen, kennt das Wetter und kann im Internet nachschauen. Und er kann den berühmten Trick: „Emo, Hände hoch!“ → er hebt die Hände (ohne Arme), „Peng!“ → er wird im Auge getroffen oder weicht aus.

## Öffnen

**https://wolfiebu-ship-it.github.io/Emo-Go-Home/v28/**

Jede neue Version bekommt einen eigenen Link (`v28`, `v29`, …), damit der Browser keine alte Version zeigt. Neue Version anlegen: `./release.sh 29`.

Seite öffnen, bei der Mikrofon-Frage „Erlauben“ tippen und losreden. Es gibt keine Knöpfe und keine Einstellungen.

- EMO benutzt zuerst die Spracherkennung des Geräts (Apple oder Google), weil die am genauesten ist.
- Geht die nicht (zum Beispiel ohne Siri/Diktierfunktion), schaltet er von selbst auf seine **eigene Spracherkennung** um. Dafür braucht man nur die normale Mikrofon-Frage.
- Beim allerersten Öffnen lädt EMO seine Stimme und seine Ohren (zusammen etwa 150 MB). Am besten im WLAN. Danach geht es schnell.
- Das Handy kann man hochkant oder quer halten: EMO passt sich an, und seine Hände bleiben immer ganz im Bild.
- Falls der Browser Ton erst nach einer Berührung erlaubt, sagt EMO „Tipp mich einmal an“.

**Ohne Extra** hat EMO ein eigenes **Wissensbuch** (`brain/wissen.js` und `brain/wissen2.js`, über 600 Fakten und 90 Hauptstädte: Rekorde, Einwohnerzahlen, Länder, viel Sport wie Fußball, Basketball, Tennis, Formel 1 und Olympia, Tiere, Weltall, Erde, Körper, Warum-Fragen, Erfindungen, Geschichte, Feiertage, Schule, Sport, Essen, Gefühle und Fragen über ihn selbst). Außerdem kennt er Witze (immer andere), das Wetter, Uhrzeit und Rechnen. Was nicht im Wissensbuch steht, schlägt er bei Wikipedia nach. Neue Fakten kann man einfach in `brain/wissen2.js` dazuschreiben.

**Mit Claude-Gehirn** redet er über alles und sucht im Internet. Dafür EMO einmal mit diesem Link öffnen (Schlüssel von https://console.anthropic.com/settings/keys):

`https://wolfiebu-ship-it.github.io/Emo-Go-Home/v28/#key=DEIN-SCHLÜSSEL`

Der Schlüssel wird nur auf dem Gerät gespeichert und sofort aus der Adresse entfernt. Er muss mit `sk-ant-` anfangen. Ist er falsch, gesperrt oder ist kein Guthaben mehr auf dem Konto, sagt EMO das einmal, zeigt den Grund kurz unten an und antwortet danach mit seinem eigenen Wissensbuch weiter. Mit `#ort=Kassel` kann man den Wohnort für das Wetter ändern (Standard: Frankfurt am Main).

## Was man sagen kann

**Wichtig: EMO hört nur, wenn man ihn ruft.** Jeder Befehl und jede Frage fängt mit **„Hey Emo“** an, zum Beispiel „Hey Emo, wie spät ist es?“. Man kann auch nur „Hey Emo“ sagen: Er antwortet „Ja?“, macht große Augen und wartet ein paar Sekunden auf deinen Befehl. Ohne „Hey Emo“ ignoriert er alles. Nur „Bang“ geht immer, wenn seine Hände schon oben sind. Wenn du redest, während EMO spricht, ist er sofort still.

| Du sagst oder machst | EMO macht |
| --- | --- |
| Irgendeine Frage („Wie wird das Wetter morgen?“, „Wie groß ist die Sonne?“, „Wer hat gestern gewonnen?“) | antwortet als KI, mit Wetter-Daten und Websuche |
| „Emo, Hände hoch!“ oder Fingerpistole in die Kamera zeigen | hebt sofort die Hände, ohne etwas zu sagen, guckt ein bisschen traurig und zittert |
| „Peng!“, „Bang!“, „Boom!“ (wenn die Hände oben sind, reicht auch alles, was das Handy ähnlich versteht, z. B. „Bank“, „Ben“, „Pen“), sehr lauter Knall oder Fingerpistole hochzucken lassen | Zeitlupe! Entweder weicht er wie im Film knapp aus, oder die Kugel trifft sein Auge: es geht kaputt wie ein Fernseher, auf den man haut (bunte Testbild-Balken, lila, pinke, grüne und blaue Striche, buntes Rauschen, schwarzer Fleck, Brummen). EMO guckt traurig und sagt „Oh, jetzt bin ich sehr traurig“, dann geht das Auge wieder an |
| „Hände runter“ | nimmt die Hände runter |
| „Erzähl einen Witz“ | erzählt jedes Mal einen anderen Witz |
| „Zwei plus zwei“, „10 mal 5“, „hundert geteilt durch vier“ | rechnet (auch mit Zahlwörtern, Punkt vor Strich) |
| „Tanz mal“, „Sing was“ | tanzt oder singt |
| „Gute Nacht“ / „Wach auf“ | schläft ein / wacht auf |
| „Emo, mach Untertitel an“ / „Untertitel aus“ | zeigt an, was EMO sagt und was er gehört hat (normalerweise aus) |
| „Hey Emo …“ | ein kurzer Piep-Ton, seine Augen werden etwas größer und schauen dich an: er hört zu. Auch wenn das Handy „Emma“, „Elmo“, „Hemo“ oder „Imo“ versteht (aber nicht bei „Ämo“ oder „ähm“) |
| Reinreden, während EMO spricht | er ist sofort still |
| Geräusche, Gemurmel, halbe Sätze | EMO bleibt ruhig und lässt dich ausreden, statt irgendwas zu sagen |
| „Was hast du gesagt?“, „Sag das nochmal“, „Wie bitte?“ | wiederholt seinen letzten Satz |
| Gerät schütteln | Kreisel-Augen, wird grün, Zunge hängt raus und wackelt, Schluckauf, ihm wird übel (am iPhone/iPad einmal auf EMO tippen und bei „Bewegung und Ausrichtung“ auf „Erlauben“ tippen) |
| „Emo, rede lauter“ / „leiser“ | stellt seine Lautstärke ein (merkt er sich) |
| „Achso“, „Okay“, „Ja“ … | nickt nur, sagt nichts |
| „Sei leise“, „Sei still“, „Halt die Klappe“, „Hör auf“ | ist sofort still, auch mitten im Satz |
| „Sag mal hallo“, „Sag: Ich bin ein Roboter“, „Sprich mir nach: …“ | sagt genau das |
| „Grüß mal Peter“, „Hey Emo, grüße Zübeide“, „Sag hallo zu Oma“, „Kannst du Max grüßen?“, „Hallo Sübeide“ | begrüßt die Person mit Namen und winkt dabei mit der Hand |
| „Zeichne ein Herz“, „Mal mir ein Haus“, „Zeichne was“ | nimmt einen Stift in die Hand und malt das Bild Strich für Strich (Herz, Stern, Sonne, Haus, Blume, Baum, Smiley, Katze, Mond, Fisch, Auto, Regenbogen). „Wisch das weg“ löscht es |
| „Ich heiße Max“ / „Wie heiße ich?“ | merkt sich deinen Namen und begrüßt dich damit |
| „Zwinker mal“, „Guck traurig/wütend/verliebt“, „Mach Herzaugen“, „Augen zu“ | macht das Gesicht |
| „Schau nach links/rechts/oben/unten“, „Dreh dich“, „Spring“, „Nick mal“, „Wink mal“ | bewegt sich |
| „Zähl bis zehn“, „Zähl rückwärts“, „Lach mal“, „Stell dich vor“ | macht das |
| „Wein mal“, „Sei traurig“, „Fang an zu weinen“ | macht ein trauriges Gesicht und sagt „Oh … jetzt bin ich sehr traurig.“ und weint |
| „Hey Emo, ich will meine Stimme aufnehmen“ | nach dem Piep sprechen (roter Punkt = Aufnahme). Wenn du 2 Sekunden still bist, ist die Aufnahme fertig. Sie bleibt auf dem Gerät gespeichert |
| „Hey Emo, Ton abspielen“ / „Spiel meine Aufnahme ab“ | Fanfare und ein kurzer Konfetti-Knall hinter EMO, Herzen und Luftballons an den Seiten, dann kommt deine Aufnahme. EMO macht Herzaugen und hält mit beiden Händen ein Schild hoch: „Alles Gute zum Geburtstag!“ mit gemaltem Konfetti. „Stopp“ hält sie an. „Lösch die Aufnahme“ löscht sie |
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
