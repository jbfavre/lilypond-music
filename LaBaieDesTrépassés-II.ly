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
    \time 3/8
    \key g \minor
      \partial 8
      d8
      g4 a8 bes4 c8 d4. bes4. c8 d8 c bes4 a8 g4.~ \break
      g4 d8 g4 a8 bes4 c8 d4. bes4. c8 d8 c bes4 a8 g4.~ g \break
      a4. c8 d c bes4. a4. g4 a8 bes8 a g a4.~ \break
      a4 g8 g4 a8 bes4 c8 d4. ees4. d4 c8 bes4 c8 d4.~ d \break
      g,4  g8 a bes c d4. c4. bes8 c d bes4 a8 g4.~ \break

      g4 d8 g4 a8 bes4 c8 d4. bes4. c8 d8 c bes4 a8 g4.~ \break
      g4 d8 g4 a8 bes4 c8 d4. bes4. c8 d8 c bes4 a8 g4.~ g \break
      a4 a8 c8 bes a bes4. a4. g4 a8 bes a g a4.~ a \break
      g4  g8 a bes c d4. c4. bes8 c d bes4 a8 g4.~ g
  }

hommesMusique = \relative c' {
    \key g \minor
      r8 g4. g4 a8 bes4. g ees4. d4. g,4.~ g
      g'4. fis4. f e <es g> d4 c8 bes4.~ bes
      ees4.~ ees d4. c4. bes4 c8~ c8 cis4 d4.~ d4
  
      r8 r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4
  
      r8 g4. g4 a8 bes4. g c,4. d4. g,4.~ g
      g'4. fis4. f e <es g> d4 c8 bes4.~ bes
      ees4.~ ees d4. c4. bes4 c8~ c8 cis4 d4.~ d4.
  
      r4. r4. r4. r4. r4. r4. r4. r4.
  }
hommesParoles = \lyricmode {
}

femmesMusique = \relative c' {
    \key g \minor
      r8 <bes' d>4. d4 ees8 bes4. d4. ees4. d4 c8 bes4.~ bes
      d4 ees8 d4 c8 d4. g,4. bes fis4. d4.~ d
      c'4. c8 bes a g4. fis4. ees4 ees8~ ees8 e4 fis4.~ fis4
  
      r8 r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4
  
      r8 <bes d>4. d4 ees8 d4. d4. ees4. d4 c8 bes4.~ bes
      d4 ees8 d4 c8 d4. g,4. bes fis4. d4.~ d
      c'4. c8 bes a g4. fis4. ees4 ees8~ ees8 e4 fis4.~ fis4.
  
      r4. r4. r4. r4. r4. r4. r4. r4.
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
          J’i -- ma -- gi -- ne sans pei -- ne les âm -- es dé -- chi -- rées
          Des ma -- rins ca -- pi -- tai -- nes aux ba -- teaux é -- ven -- trés,
          Tels gran -- de ba -- lei -- ne, d’a -- voir trop na -- vi -- gué,
          Des mois et des se -- maines, es -- pé -- rant ra -- me -- ner
          Ce que la Mer dé -- dai -- gne et leur veut bien lais -- ser;
          Lut -- tes her -- cu -- lé -- en -- nes, ef -- forts dé -- se -- spé -- rés,
          Grande a -- ven -- ture hu -- mai -- ne, au prix si cher pa -- yé,
          Mais
          la Mer sou -- ve -- rai -- ne, fi -- nit par tri -- om -- pher
          Et les dros -- se, hau -- tai -- ne, en Baie des Tré -- pas -- sés.
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
  \midi { \tempo 4. = 50 }
}
