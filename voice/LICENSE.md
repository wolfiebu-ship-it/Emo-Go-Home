# Stimme und Zuhören – verwendete Bausteine

| Datei | Was | Herkunft | Lizenz |
| --- | --- | --- | --- |
| `voice/de-kerstin-low.onnx(.json)` | Neuronale deutsche Stimme „kerstin“ (Piper) | rhasspy/piper, Release v0.0.2 | Stimme trainiert auf dem M-AILABS-Datensatz (siehe https://www.caito.de/2019/01/03/the-m-ailabs-speech-dataset/) |
| `voice/piper_phonemize.*` | Aussprache (espeak-ng, als WebAssembly) | npm `@diffusionstudio/piper-wasm@1.0.0` | GPL-3.0 (espeak-ng) |
| `voice/ort.min.js`, `voice/ort-wasm-simd.wasm` | ONNX Runtime Web | npm `onnxruntime-web@1.18.0` | MIT |
| `listen/vosk.js` | Spracherkennung im Browser | npm `vosk-browser@0.0.8` | Apache-2.0 |
| `listen/vosk-model-small-de.tar.gz` | Deutsches Spracherkennungs-Modell `vosk-model-small-de-0.15` | alphacephei.com/vosk/models | Apache-2.0 |

EMO macht aus der Stimme eine Kinderstimme, indem er sie langsamer erzeugt und schneller abspielt. So werden Tonhöhe und Klangfarbe höher, das Tempo bleibt normal.
