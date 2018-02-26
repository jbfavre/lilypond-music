\version "2.18.2"

\header {
  title = "All Night Vigils, Intonations"
  composer = "Serguei Rachmaninov"
}

global = {
  \key c \major
}

intonationMusic = \relative c {
  \global
  \clef bass
  \cadenzaOn
  c,2^"Basse" c2. c4 c1 \fermata
  c'4^"Baryton" c8 c c8 c c c4 \fermata \bar "|" \break
  \clef "treble_8"
  c'4^"Ténor" c8 c c4 c\breve \bar"|" \break
  d8 c b c4 c8 d4 \bar"|" \break
  e8 d c c c4 b8 a c4 c c c \fermata
}

intonationLyricsSlavon = \lyricmode {
  Вос -- тан -- и -- те.
  Го -- спо -- ди, бла -- го -- сло -- ви.
  Сла -- ва Свя -- тей,
  \once \override LyricText.self-alignment-X = #LEFT
  "и Единосущной, и Животворящей, и Нера" -- здел -- ьней Тро -- ице
  все -- гда, ны -- не, и пр -- исно и во ве -- ки ве -- ков.
}
intonationLyricsLatin = \lyricmode {
  Vo -- \markup { \bold sta} -- ni -- tié.
  \markup { \bold Go} -- spo -- di, bla -- go -- slo -- \markup { \concat { \bold vi .}}
  \markup { \bold Sla} -- va svya -- \markup { \concat { \bold tiéy ,}}
  \once \override LyricText.self-alignment-X = #LEFT
  \markup { \concat { "i yédino" \bold susch "niey, i
  jivotvo" \bold rya "schiey, i niéraz"}} -- \markup { \concat {\bold diel ’}} -- niey troï -- \markup { \concat{\bold tsè ,}}
  vsié -- \markup { \concat {\bold gda ,}} \markup { \bold ny} -- nié i \markup { \bold pri} -- sno i vo \markup { \bold vié} -- ki
  vié -- \markup { \concat {\bold kov .}}
}
intonationLyricsFrench = \lyricmode {
  Levez-vous.
  Seigneur, bénis [-nous].
  Gloi -- re~à la sain -- te, et con -- subs -- tan -- tiel -- le,
  et vi -- vi -- fian -- te et in -- di -- vi -- si -- ble Tri -- ni -- té,
  tou -- jours, main -- te -- nant et à ja -- mais, et pour les siè -- cles des siè -- cles.
}

\score {
  \header {
    piece = "Numéro 1"
  }
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \center-column { Soliste }
    } <<
      \new Voice = "solisteUn" { \voiceOne \intonationMusic }
      \new Lyrics { \lyricsto "solisteUn" \intonationLyricsSlavon }
      \new Lyrics { \lyricsto "solisteUn" \intonationLyricsLatin }
    >>
  >>
  \layout { }
  \midi { }
}




intonationMusic = \relative c {
  \global
  \clef bass
  \cadenzaOn
  f4 f8 f f f4 f8 f g4 f f8 f4 \bar "|" \break
  g8 g a g f f f4 \bar "|" \break
  g4 g8 g a a a a a g4 f4 f \bar "|" \break
  a8 g g g4 g4 f8 d f8 f f f4 \fermata
  \cadenzaOff
}
intonationLyricsSlavon = \lyricmode {
  Я -- ко по -- до -- бает Те -- бе вся -- кая сла -- ва,
  честь и по -- кло -- не -- н -- ие: О -- тцу, и Сы -- ну, и Свя -- то -- му Ду -- ху,
  ны -- не, и пр -- исно, и во ве -- ки ве -- ков.
}
intonationLyricsLatin = \lyricmode {
  \markup { \bold Ya} -- ko po -- do -- \markup { \concat {\bold ba yet}} tié -- \markup { \bold bié} \markup { \bold fsya} -- kaya \markup { \bold sla} -- va,
  tchest’ i po -- klo -- \markup { \bold nié} -- ni -- yé,
  o -- \markup { \bold tsou} i \markup { \bold sy} -- nou i svya -- \markup { \bold to} -- mou \markup { \bold dou} -- khou,
  \markup { \bold ny} -- nié i \markup { \bold pri} -- sno i vo \markup { \bold vié} -- ki vié -- \markup { \concat{\bold kov .}}
}
intonationLyricsFrench = \lyricmode {
Car à Toi sont dus toute la gloire, l’honneur et l’adoration : au Père, au Fils et au Saint-Esprit, maintenant et à jamais, et pour les siècles des siècles.
}
\score {
  \header {
    piece = "Numéro 3"
  }
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \center-column { Soliste }
    } <<
      \new Voice = "solisteTrois" { \voiceOne \intonationMusic }
      \new Lyrics { \lyricsto "solisteTrois" \intonationLyricsSlavon }
      \new Lyrics { \lyricsto "solisteTrois" \intonationLyricsLatin }
    >>
  >>
  \layout { }
  \midi { }
}


\pageBreak

intonationMusic = \relative c {
  \global
  \clef bass
  \cadenzaOn
  f8 f f f4 g a g f8 f f f4 f \bar "|" \break
  g8 g a a a g a b4 b \bar "|" \break
  a8 a a a4 a g8 e f4 f8 f f4 \fermata
}
intonationLyricsSlavon = \lyricmode {
  Я -- ко Тв -- ое есть Цар -- ство,~и си -- ла, и сла -- ва,
  О -- тца~и Сы -- на~и Свя -- та -- го Ду -- ха,
  ны -- не и пр -- исно и во ве -- ки ве -- ков.
}
intonationLyricsLatin = \lyricmode {
  \markup { \bold Ya} -- ko tvo -- \markup { \bold yé} yest’ \markup { \bold tsar} -- stvo~i \markup { \bold si} -- la i \markup { \bold sla} -- va,
  o -- \markup { \bold tsa~i} \markup { \bold sy} -- na~i svya -- \markup { \bold ta} -- go \markup { \bold dou} -- kha,
  \markup { \bold ny} -- nié i \markup { \bold pri} -- sno i vo \markup { \bold vié} -- ki vié -- \markup { \bold kov}
}
intonationLyricsFrench = \lyricmode {
  Car c’est à Toi qu’appartiennent le règne, la puissance et la gloire, au Père, au Fils et au Saint-Esprit, maintenant et à jamais, et pour les siècles des siècles.
}
\score {
  \header {
    piece = "Numéro 6"
  }
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \center-column { Soliste }
    } <<
      \new Voice = "solisteSix" { \voiceOne \intonationMusic }
      \new Lyrics { \lyricsto "solisteSix" \intonationLyricsSlavon }
      \new Lyrics { \lyricsto "solisteSix" \intonationLyricsLatin }
    >>
  >>
  \layout { }
  \midi { }
}




intonationMusic = \relative c' {
  \global
  \clef "treble_8"
  \cadenzaOn
  d8 d d d d c4 d8 d4 d8 d d4 \bar "|" \break
  d8 d e4 d8 d c4 d8 d d4 \bar "|" \break
  e8 e4 f8 e d d d c d4 d4 \bar "|" \break
  e8 d d d4 d8 d8 c d4 d d d4 \fermata
}
intonationLyricsSlavon = \lyricmode {
  Я -- ко бла -- го -- сло -- ви -- ся И -- мя Тв -- ое
  и про -- сла -- ви -- ся цар -- ство Тв -- ое,
  О -- тца~и Сы -- на и Свя -- та -- го Ду -- ха,
  ны -- не и пр -- исно, и во ве -- ки ве -- ков.
}
intonationLyricsLatin = \lyricmode {
  \markup { \bold Ya} -- ko bla -- go -- slo -- \markup { \bold vi} -- sya \markup { \bold i} -- mya tvo -- \markup { \concat{\bold yé ,}}
  i pro -- \markup { \bold sla} -- vi -- sya \markup { \bold tsar} -- stvo tvo -- \markup { \concat {\bold yé ,}}
  o -- \markup { \concat {\bold tsa " i" }} \markup { \bold sy} -- na, i svya -- \markup { \bold ta} -- go \markup { \bold dou} -- kha, \markup { \bold ny} -- nié i \markup { \bold pri} -- sno, i vo \markup { \bold vié} -- ki vié -- \markup { \concat {\bold kov .}}
}
intonationLyricsFrench = \lyricmode {
  Car Ton Nom est béni, et Ton royaume est glorifié, celui du Père, du Fils et du Saint-Esprit, maintenant et à jamais, et pour les siècles des siècles.
}
\score {
  \header {
    piece = "Numéro 10"
  }
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \center-column { Soliste }
    } <<
      \new Voice = "solisteDix" { \voiceOne \intonationMusic }
      \new Lyrics { \lyricsto "solisteDix" \intonationLyricsSlavon }
      \new Lyrics { \lyricsto "solisteDix" \intonationLyricsLatin }
    >>
  >>
  \layout { }
  \midi { }
}