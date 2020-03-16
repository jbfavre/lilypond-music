\version "2.18.2"
\language "english"

#(set-global-staff-size 24)
\header {
  title = "Acclamation de l'Évangile"
  subtitle = "3ème Dimanche de Carême"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - Mars 2020"
  tagline = ##f
}
\paper {
  #(include-special-characters)
}
global = {
  \key a \major
  \time 3/8
}

sopranoMusic =   \relative c' {
  e4^"Soliste" e8 b'4 b8 a gs a b b cs \break d (cs) d b4. (b4.)
  b4^"Tous" a8 b4 d8 b4.\break
  e,8^"Soliste" gs a b4 b8 b b b a a \breathe cs8 b4. \break
  b4 b8 a a a \time 2/8 fs8 fs e e fs fs \time 3/8 b4. r4.
  
}
sopranoLyrics = \lyricmode {
  Gloire au Christ, Sa -- gesse é -- ter -- nel -- le du Dieu vi -- vant&nbsp;!
  Gloire à Toi, Sei -- gneur&nbsp;!
  Tu es vrai -- ment le Sau -- veur du mon -- de, Sei -- gneur&nbsp;!
  Don -- ne -- moi de l'eau vi -- ve que je n'ai plus soif.
}
\score {
  \new GrandStaff <<
    \new ChoirStaff <<
      \new Staff <<
        \global \clef treble
        \new Voice = "soprano" { \sopranoMusic }
        \new Lyrics \lyricsto "soprano" { \sopranoLyrics }
      >>
    >>
  >>
  \layout{}
}
