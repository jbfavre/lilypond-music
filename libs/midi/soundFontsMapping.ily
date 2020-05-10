% soundfont mapping for Nice-Keys-Ultimate-V2.3.sf2
#(define instrument-names-alist '())
#(set! instrument-names-alist
      (append
       `(
         ("Yamaha C5 Grand" . ,(- 1 1))
         ("Dark Grand" . ,(- 2 1))
         ("Mellow Grand" . ,(- 3 1))
         ("Bright Grand" . ,(- 4 1))
         ("Very Bright Grand" . ,(- 5 1))
         ("Upright Piano" . ,(- 6 1))
         ("Upright Bright" . ,(- 7 1))
         ("RESONANCE" . ,(- 8 1))

         ;; (9-16 chrom percussion)
         ("Yam C5 No Resonance" . ,(- 9 1))
         ;; does not exists in soundfont ("" . ,(- 10 1))
         ("music box" . ,(- 11 1))
         ("vibraphone" . ,(- 12 1))
         ("marimba" . ,(- 13 1))
         ("xylophone" . ,(- 14 1))
         ("tubular bells" . ,(- 15 1))
         ("dulcimer" . ,(- 16 1))

         ;; (17-24 organ)
         ("drawbar organ" . ,(- 17 1))
         ("percussive organ" . ,(- 18 1))
         ("rock organ" . ,(- 19 1))
         ("church organ" . ,(- 20 1))
         ("reed organ" . ,(- 21 1))
         ("accordion" . ,(- 22 1))
         ("harmonica" . ,(- 23 1))
         ("concertina" . ,(- 24 1))

         ;; (25-32 guitar)
         ("acoustic guitar (nylon)" . ,(- 25 1))
         ("acoustic guitar (steel)" . ,(- 26 1))
         ("electric guitar (jazz)" . ,(- 27 1))
         ("electric guitar (clean)" . ,(- 28 1))
         ("electric guitar (muted)" . ,(- 29 1))
         ("overdriven guitar" . ,(- 30 1))
         ("distorted guitar" . ,(- 31 1))
         ("guitar harmonics" . ,(- 32 1))

         ;; (33-40 bass)
         ("acoustic bass" . ,(- 33 1))
         ("electric bass (finger)" . ,(- 34 1))
         ("electric bass (pick)" . ,(- 35 1))
         ("fretless bass" . ,(- 36 1))
         ("slap bass 1" . ,(- 37 1))
         ("slap bass 2" . ,(- 38 1))
         ("synth bass 1" . ,(- 39 1))
         ("synth bass 2" . ,(- 40 1))

         ;; (41-48 strings)
         ("violin" . ,(- 41 1))
         ("viola" . ,(- 42 1))
         ("cello" . ,(- 43 1))
         ("contrabass" . ,(- 44 1))
         ("tremolo strings" . ,(- 45 1))
         ("pizzicato strings" . ,(- 46 1))
         ("orchestral harp" . ,(- 47 1))
         ("timpani" . ,(- 48 1))

         ;; (49-56 ensemble)
         ("string ensemble 1" . ,(- 49 1))
         ("string ensemble 2" . ,(- 50 1))
         ("synthstrings 1" . ,(- 51 1))
         ("synthstrings 2" . ,(- 52 1))
         ("choir aahs" . ,(- 53 1))
         ("voice oohs" . ,(- 54 1))
         ("synth voice" . ,(- 55 1))
         ("orchestra hit" . ,(- 56 1))

         ;; (57-64 brass)
         ("trumpet" . ,(- 57 1))
         ("trombone" . ,(- 58 1))
         ("tuba" . ,(- 59 1))
         ("muted trumpet" . ,(- 60 1))
         ("french horn" . ,(- 61 1))
         ("brass section" . ,(- 62 1))
         ("synthbrass 1" . ,(- 63 1))
         ("synthbrass 2" . ,(- 64 1))

         ;; (65-72 reed)
         ("soprano sax" . ,(- 65 1))
         ("alto sax" . ,(- 66 1))
         ("tenor sax" . ,(- 67 1))
         ("baritone sax" . ,(- 68 1))
         ("oboe" . ,(- 69 1))
         ("english horn" . ,(- 70 1))
         ("bassoon" . ,(- 71 1))
         ("clarinet" . ,(- 72 1))

         ;; (73-80 pipe)
         ("piccolo" . ,(- 73 1))
         ("flute" . ,(- 74 1))
         ("recorder" . ,(- 75 1))
         ("pan flute" . ,(- 76 1))
         ("blown bottle" . ,(- 77 1))
         ("shakuhachi" . ,(- 78 1))
         ("whistle" . ,(- 79 1))
         ("ocarina" . ,(- 80 1))

         ;; (81-88 synth lead)
         ("lead 1 (square)" . ,(- 81 1))
         ("lead 2 (sawtooth)" . ,(- 82 1))
         ("lead 3 (calliope)" . ,(- 83 1))
         ("lead 4 (chiff)" . ,(- 84 1))
         ("lead 5 (charang)" . ,(- 85 1))
         ("lead 6 (voice)" . ,(- 86 1))
         ("lead 7 (fifths)" . ,(- 87 1))
         ("lead 8 (bass+lead)" . ,(- 88 1))

         ;; (89-96 synth pad)
         ("pad 1 (new age)" . ,(- 89 1))
         ("pad 2 (warm)" . ,(- 90 1))
         ("pad 3 (polysynth)" . ,(- 91 1))
         ("pad 4 (choir)" . ,(- 92 1))
         ("pad 5 (bowed)" . ,(- 93 1))
         ("pad 6 (metallic)" . ,(- 94 1))
         ("pad 7 (halo)" . ,(- 95 1))
         ("pad 8 (sweep)" . ,(- 96 1))

         ;; (97-104 synth effects)
         ("fx 1 (rain)" . ,(- 97 1))
         ("fx 2 (soundtrack)" . ,(- 98 1))
         ("fx 3 (crystal)" . ,(- 99 1))
         ("fx 4 (atmosphere)" . ,(- 100 1))
         ("fx 5 (brightness)" . ,(- 101 1))
         ("fx 6 (goblins)" . ,(- 102 1))
         ("fx 7 (echoes)" . ,(- 103 1))
         ("fx 8 (sci-fi)" . ,(- 104 1))

         ;; (105-112 ethnic)
         ("sitar" . ,(- 105 1))
         ("banjo" . ,(- 106 1))
         ("shamisen" . ,(- 107 1))
         ("koto" . ,(- 108 1))
         ("kalimba" . ,(- 109 1))
         ("bagpipe" . ,(- 110 1))
         ("fiddle" . ,(- 111 1))
         ("shanai" . ,(- 112 1))

         ;; (113-120 percussive)
         ("tinkle bell" . ,(- 113 1))
         ("agogo" . ,(- 114 1))
         ("steel drums" . ,(- 115 1))
         ("woodblock" . ,(- 116 1))
         ("taiko drum" . ,(- 117 1))
         ("melodic tom" . ,(- 118 1))
         ("synth drum" . ,(- 119 1))
         ("reverse cymbal" . ,(- 120 1))

         ;; (121-128 sound effects)
         ("guitar fret noise" . ,(- 121 1))
         ("breath noise" . ,(- 122 1))
         ("seashore" . ,(- 123 1))
         ("bird tweet" . ,(- 124 1))
         ("telephone ring" . ,(- 125 1))
         ("helicopter" . ,(- 126 1))
         ("applause" . ,(- 127 1))
         ("gunshot" . ,(- 128 1))

         ;; (channel 10 drum-kits - subtract 32768 to get program no.)
         ("standard kit" .     ,(+ 32768 0))
         ("standard drums" .   ,(+ 32768 0))
         ("drums" .            ,(+ 32768 0))
         ("room kit" .         ,(+ 32768 8))
         ("room drums" .       ,(+ 32768 8))
         ("power kit" .        ,(+ 32768 16))
         ("power drums" .      ,(+ 32768 16))
         ("rock drums" .       ,(+ 32768 16))
         ("electronic kit" .   ,(+ 32768 24))
         ("electronic drums" . ,(+ 32768 24))
         ("tr-808 kit" .       ,(+ 32768 25))
         ("tr-808 drums" .     ,(+ 32768 25))
         ("jazz kit" .         ,(+ 32768 32))
         ("jazz drums" .       ,(+ 32768 32))
         ("brush kit" .        ,(+ 32768 40))
         ("brush drums" .      ,(+ 32768 40))
         ("orchestra kit" .    ,(+ 32768 48))
         ("orchestra drums" .  ,(+ 32768 48))
         ("classical drums" .  ,(+ 32768 48))
         ("sfx kit" .          ,(+ 32768 56))
         ("sfx drums" .        ,(+ 32768 56))
         ("mt-32 kit" .        ,(+ 32768 127))
         ("mt-32 drums" .      ,(+ 32768 127))
         ("cm-64 kit" .        ,(+ 32768 127))
         ("cm-64 drums" .      ,(+ 32768 127))
         )
       instrument-names-alist))






%{

./Nice-Keys-Ultimate-V2.3.sf2

000-000 Yamaha C5 Grand
000-001 Dark Grand
000-002 Mellow Grand
000-003 Bright Grand
000-004 Very Bright Grand
000-005 Upright Piano
000-006 Upright Bright
000-007 RESONANCE
000-008 -Yam C5 No Resonance
000-010 Straight Rhodes
000-011 Rhodes Bright
000-012 Slow, Light,Tremolo
000-013 SLT Bright
000-014 Slow, Heavy,Tremolo
000-015 Fast, Light,Tremolo
000-016 Fast, Heavy,Tremolo
000-017 HS DX7 Rhodes
000-018 Hard FM EP
000-019 Harpsichord
000-020 Silky Pad
000-021 Warm Pad
000-022 Full Strings Vel
000-023 Slow Strings
000-024 Fast Strings
000-025 Chamber Strings SSO
000-026 Full Orchestra
000-027 Mono Strings Velo
000-028 Pizzicato Strings
000-029 Synth Strings
000-031 StackStrings
000-032 Violin Vel SSO
000-033 Cello
000-034 Cello SSO
000-035 Viola SSO
000-036 Bass Strings SSO
000-037 Flute+8 Vel SSO
000-038 Flute
000-039 Piccolo
000-040 Tenor Sax
000-041 Alto Sax
000-042 Trumpet+8 Vel
000-043 Trumpet
000-045 Trombone
000-046 Tuba
000-047 Brass
000-048 Oboe
000-049 Clarinet
000-050 Bassoon
000-051 Timpani
000-052 Pan Flute
000-053 Marimba
000-054 Fiddle
000-056 Banjo 5 String
000-057 Mandolin Expression
000-059 Bagpipe
000-061 Brightness
000-062 Atmosphere
000-063 Voyager-8
000-064 Saw Wave
000-065 Moog Pad
000-066 Moog 55 Rez
000-068 Rotary Org.S
000-069 Hammond Org.F
000-070 B3 Fast Leslie
000-072 Pipe Organ
000-073 Grand Plein-jeu
000-074 Principaux 8 4
000-075 Accordion
000-076 Italian Accordion
000-077 Steel Guitar Fret
000-078 12 String Guitar
000-079 Nylon Guitar Fret
000-080 Spanish V Slide
000-081 Single Coil FX
000-082 LP Twin Elec Gtr
000-083 Jazz Guitar 1
000-084 Overdrive Guitar
000-085 Distortion Guitar
000-086 Muted Guitar 1
000-087 Muted Guitar 2
000-088 Muted Acoustic Gtr
001-000 Dynamic Yamaha C5
001-008 -Dynamic No Res
001-018 FM-Yam Hybrid
001-025 Chamber Str 2
001-032 Violin (all around)
001-033 Cello (E Winer)
001-054 Fiddle Velocity
001-077 Steel Guitar
001-079 Nylon Guitar
001-080 Spanish
001-081 Single Coil FX Pick
001-082 LP Twin Pick Gtr
001-083 Jazz Guitar 2
001-084 Overdrive Gtr Pick
001-085 Distn Gtr Pick
002-008 -Dark Grand No Res
002-018 FM-Up Hybrid
002-032 Two Violins
002-054 Fiddle w Bow Lift
002-077 Steel Low Vel Mute
002-081 Single Coil Dry
002-082 LP Twin Muted
002-083 Jazz Guitar 3
002-085 Distn Gtr Fade
003-008 -Mellow Grand No Res
003-077 Steel Layered Mute
003-081 Single Coil Pick
004-081 Single Coil Muted
005-008 -Bright No Res
006-008 -V.Bright No Res
007-008 -Upright No Res
008-008 -Upright Brt No Res


/////////////////////////////////////////////////////////////////////////////////////
./Sal-Stein-Uprights-Sforzando-V4.0.sf2

000-000 Yamaha C5 Grand
000-001 Dynamic Yamaha C5
000-002 Dark Grand
000-003 Mellow Grand
000-004 Bright Grand
000-005 Very Bright Grand
000-006 Classic Steinway
000-007 Studio Steinway
000-008 Bright Steinway
000-009 Upright Piano
000-010 Upright Bright
000-011 Honky Tonk
000-012 RESONANCE
000-013 -Yam C5 No Res
000-014 -Dynamic No Res
000-015 -Dark Grand No Res
000-016 -Mellow Grand No Res
000-017 -Bright No Res
000-018 -V.Bright No Res
000-019 -ClassicStein No Res
000-020 -Studio Stein No Res
000-021 -Bright Stein No Res
000-022 -Upright No Res
000-023 -Upright Brt No Res

%}
