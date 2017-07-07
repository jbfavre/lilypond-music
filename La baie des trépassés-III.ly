\version "2.18.2"

#(set-global-staff-size 16)

setStaffElements = {
  \override Staff.Clef #'font-size = #-2
  \override Staff.TimeSignature #'font-size = #-1
  \override Staff.KeySignature #'font-size = #-1.5
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #5
  \override Staff.MultiMeasureRest #'font-size = #-1.5
}

turnOffMarkup = {
  \override DynamicText #'stencil = ##f
  \override Script #'stencil = ##f
  \override Hairpin #'stencil = ##f
  \override TextScript #'stencil = ##f
}

setNoteSize = {
  \override NoteHead #'font-size = #-1.5
  \override Script #'font-size = #-1.5
  \override Rest #'font-size = #-1.5
  \override Accidental #'font-size = #-1.5
  \override Dots #'font-size = #-1.5
  \override DynamicText #'font-size = #-1
}

setLyricSize = { \override LyricText #'font-size = #-1.5 }

\header {
  title = "La baie des trépassés"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - 2017"
  tagline = ##f
}

\paper {
  paper-width = 8.5\in
  paper-height = 11\in
  left-margin = 0.725\in
  right-margin = 0.725\in
  top-margin = 0.625\in
  bottom-margin = 0.625\in

  max-systems-per-page = #9

}

melodie =   \relative c' {
    \time 3/4
    \key g \major
      r2.
      r4 g'4 a b b b b a b c d a b2. \break
      r4 b4 a g g g g fis g a a b a2. \break
      r4 a4 b c c c c b a g a b b2. \break
      r4 b4 a d d c b a g fis g a b2. \break
      r4 b4 a d d c b a g fis e fis g2. \break
      r4 g4 g e' e e e e d c d e d2. \break
      r4 a b c c c c b a g a b b2. \break
      r4 g4 g e' e e e e d c d e d2. \break
      r4 g,4 a b b d b a g fis g a g2.
}

hommesMusique = \relative c' {
    \time 3/4
    \key g \major
    g,2.~
    g2.~ g~ g d g
    r4 g'4 fis e e e e e d cis b cis d2.
  }
hommesParoles = \lyricmode {
}

femmesMusique = \relative c' {
  }
femmesParoles = \lyricmode {
}

\score {
  \new GrandStaff
  <<
    \new Staff
    <<
      \setStaffElements
      \clef treble
      \new Voice = "melodie" {
        \melodie
      }
      \addlyrics {
          J’i -- ma -- gi -- ne sans peine les âm -- es dé -- chi -- rées
          Des ma -- rins ca -- pi -- tain' aux ba -- teaux é -- ven -- trés,
          Tels gran -- de ba -- lei -- ne, d’a -- voir trop na -- vi -- gué,
          Des mois et des se -- maines, es -- pé -- rant ra -- me -- ner
          Ce que la Mer dé -- daign' et leur veut bien lais -- ser;

          Lut -- tes her -- cu -- lé -- ennes, ef -- forts dé -- se -- spé -- rés,
          Grande a -- ven -- ture hu -- maine, au prix si cher pa -- yé,
          Mais
          la Mer sou -- ve -- raine, fi -- nit par tri -- om -- pher
          Et les dros -- se, hau -- taine, en Baie des Tré -- pas -- sés.
        }
    >>
    \new PianoStaff
    <<
      \new Staff
      {
        \setStaffElements
        \clef treble
        \new Voice = "femmes" {
          \femmesMusique
        }
      }
      \new Lyrics \lyricsto "femmes" {
        \femmesParoles
      }
      \new Staff
      {
        \setStaffElements
        \clef bass
        \new Voice = "hommes" {
          \hommesMusique
        }
      }
      \new Lyrics \lyricsto "hommes" {
        \hommesParoles
      }
    >>
  >>
  \layout { ragged-last = ##f }
  \midi { \tempo 4. = 100 }
}
