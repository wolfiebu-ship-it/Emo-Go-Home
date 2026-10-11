# EMO Go Home

Ein kleiner Roboter auf dem Bildschirm, inspiriert von EMO. Man sieht nur seine leuchtenden Augen. Man kann mit ihm reden, er antwortet mit einer piepsigen Baby-Roboter-Stimme, und er kann den berühmten Trick: „Hände hoch!“ → er hebt seine Hände (ohne Arme), „Peng!“ → er wird im Auge getroffen oder weicht aus.

## Starten

Alles steckt in einer Datei: `index.html`.

- **Am einfachsten:** `index.html` in **Chrome** oder **Edge** öffnen und auf „EMO aufwecken“ klicken. Mikrofon erlauben.
- **Als Webseite (auch fürs Handy):** Auf GitHub unter *Settings → Pages* bei „Branch“ `master` und `/ (root)` wählen. Dann ist EMO unter `https://wolfiebu-ship-it.github.io/Emo-Go-Home/` erreichbar.

Spracherkennung gibt es nur in Chrome und Edge. In anderen Browsern kann man EMO unten etwas schreiben.

## Was EMO kann

| Du sagst oder machst | EMO macht |
| --- | --- |
| „Hände hoch!“ oder Fingerpistole in die Kamera halten | hebt ängstlich die Hände |
| „Peng!“, „Bang!“, „Boom!“, lauter Knall oder Fingerpistole hochzucken lassen | wird ins Auge getroffen (Riss, X-Augen, kippt um) oder weicht aus (Riss im Bildschirm, „Daneben!“) |
| „Hände runter“ | nimmt die Hände runter |
| „Tanz mal“, „Sing was“, „Erzähl einen Witz“ | tanzt, singt, erzählt Witze |
| „Ich hab dich lieb“ | Herzaugen |
| „Wie spät ist es?“, „Was ist 7 plus 5?“, „Würfel mal“ | antwortet |
| „Gute Nacht“ / „Wach auf“ | schläft ein / wacht auf |
| Aufs Gesicht tippen | kichert, bei vielen Tipps wird ihm schwindelig |

In den Einstellungen (Zahnrad) kann man einstellen:

- **Stimme:** Piepser + Worte, nur Piepser (wie der echte EMO) oder nur Worte, dazu Tonhöhe und Tempo.
- **Wie oft EMO ausweicht** beim Peng-Spiel.
- **Claude-API-Schlüssel (optional):** Dann kann EMO frei über alles reden. Ohne Schlüssel kennt er viele feste Sätze.

## Kamera / Fingerpistole

Kamera-Knopf drücken. EMO lädt dann eine Hand-Erkennung (MediaPipe). Zeig ihm eine Fingerpistole (Zeigefinger raus, die anderen Finger eingeklappt): Nach kurzer Zeit hebt er die Hände. Lass die Pistole schnell nach oben zucken, dann schießt du. Die Kamerabilder bleiben auf deinem Gerät.
