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
  title = "Ave Maria"
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

global = {
    \time 3/4
    \key fis \minor
}

latinLyrics = \lyricmode {
  A -- ve Ma -- ri -- a, gra -- ti -- a ple -- na
  Do -- mi -- nus te -- cum
  Be -- ne -- di -- cta tu in mu -- li -- er -- i -- bus;
  Et be -- ne -- di -- ctus fru -- ctus ven -- tris tu -- i, Je -- sus!
  San -- cta Ma -- ri -- a, Ma -- ter De -- i,
  O -- ra pro no -- bis, pec -- ca -- to -- ri -- bus,

  Nunc, et in o -- ra mo -- rtis no -- stræ.
  A -- men
}

sopranoMusic =   \relative c' {
      fis4 (eis) fis fis (gis) ais b2 (b4)
      gis (b) gis a2. (fis4) gis2 a2. \fermata \break
      gis2 (ais4) b2 b4 b4 (d b) cis2 cis4 cis b cis a gis ais b a fis a2 (gis4) \break
      fis2 (gis4) a2 (cis4) b (gis b) a2 gis4 fis gis ais b cis d \break
      cis (a cis) cis2 (b4) ais (gis) ais b (gis) b a gis fis fis2. eis2. \break
      cis'2. cis2 cis4 d2. cis2 (b4) ais (gis ais) b (a gis) fis2 fis4 eis2. \break
      cis2. b2 b4 a2 a4 gis2 b4 cis2. cis2.
      fis2.~ fis2. cis2.~ cis2.
}

altoMusic = \relative c' {
      cis'4 gis a a (gis) fis fis2~ fis4
      b a gis fis2. (fis4) eis8 (dis8 eis4) fis2. \fermata
}

tenorMusic = \relative c {
      a'4 b cis cis (b) cis d2~ d4
      fis4 gis d cis (d a gis) cis (b) cis2. \fermata
}

bassMusic = \relative c {
      fis4 cis fis fis (e) cis d2~ d4
      b4 d b a2. (b4) cis2 <fis fis,>2. \fermata
}

pianoone = \relative c' {
  <fis cis a>4 <eis cis gis>4 <fis cis a>4 <fis cis a>4 <b, e gis>4 <cis e fis ais> <d fis b>2~ <d gis b>4
  <b d gis>4~ <b d b'>4~ <b d fis>4  <a cis fis>2. <a cis fis>4 ~ <gis cis eis>8~ <gis cis dis>8~ <gis cis eis>4  <a cis fis>2. \fermata
  <b e gis>2 <cis e fis ais>4 <d fis b>2 <d fis b>4 <d gis b>4 <gis b d>4 <d fis b>4 < eis gis cis>2
  <eis gis cis>4 <d fis a cis>2. <cis fis a>2 <cis e fis ais>4 <d fis b>2 <a d fis>4 <cis eis a>2~ <cis eis gis>4
  <a d fis>2  <cis eis gis>4 <cis fis a>2 <cis e fis ais>4 <d fis b>4 <b d gis>4 <d fis b>4 <cis eis a>2 <cis eis gis>4
  r2. r2. r2. r2. r2. r2. r2. r2. r2. 
  <fis ais cis>2. <e fis ais cis>2. <d fis b>2 <d gis b>4 <eis gis cis>2.
}
pianotwo = \relative c {
      fis4 cis fis fis e cis d2 gis4
      b,4 d b a2 b4 cis~ cis2 <fis fis,>2. \fermata
      r2. r2. r2. r2. r2. r2. r2. r2. r2. r2. 
      r2. r2. r2. r2. r2. r2. r2. r2. r2. r2. r2.
      ais2. fis2 e4 d4 gis fis eis2.
}
\score {
  \new GrandStaff <<
    \new ChoirStaff <<
        \new Staff \with { instrumentName = \markup {\right-align "Soprano"} }
            <<
              \setStaffElements \global \clef treble
              \new Voice = "soprano" { \sopranoMusic }
              \new Lyrics \lyricsto "soprano" { \latinLyrics }
            >>
        \new Staff \with { instrumentName = \markup {\right-align "Alto"} }
        <<
              \setStaffElements \global \clef treble
              \new Voice = "alto" { \altoMusic }
              \new Lyrics \lyricsto "soprano" { \latinLyrics }
        >>
        \new Staff \with { instrumentName = \markup {\right-align "Tenor"} }
        <<
              \setStaffElements \global \clef "treble_8"
              \new Voice = "tenor" { \tenorMusic }
            \new Lyrics \lyricsto "soprano" { \latinLyrics }
        >>
        \new Staff \with { instrumentName = \markup {\right-align "Basse"} }
        <<
              \setStaffElements \global \clef bass
              \new Voice = "bassi" { \bassMusic }
            \new Lyrics \lyricsto "soprano" { \latinLyrics }
        >>
    >>
    \new PianoStaff
    <<
      \new Staff
      {
        \setStaffElements
        \global \clef treble
        \new Voice {
          \pianoone
        }
      }
      \new Staff
      {
        \setStaffElements
        \global \clef bass
        \new Voice {
          \pianotwo
        }
      }
    >>
  >>
  \layout { ragged-last = ##f }
  \midi { \tempo 4. = 80 }
}
