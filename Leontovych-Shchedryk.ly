\version "2.16.2"
\include "english.ly"

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

ten = \markup { \smaller \italic \halign #-0.5 "ten." }
dim = \markup { \smaller \italic "dim." }
rit = \markup { \smaller \italic "rit." }
solo = \markup { "Solo" }
all = \markup { "All" }

\header {
  title = "Shchedryk"
  composer = "Mykola Leontovych"
  tagline = ""
}

\paper {
  paper-width = 8.5\in
  paper-height = 11\in
  left-margin = 0.725\in
  right-margin = 0.725\in
  top-margin = 0.625\in
  bottom-margin = 0.625\in
  
  markup-system-spacing #'basic-distance = #20
  page-count = #3
  max-systems-per-page = #2
  ragged-last-bottom = ##f
  
  % Define the three document fonts - serif, sans serif, and monospaced
  #(define fonts
     (make-pango-font-tree "Linux Libertine" "Luxi Sans" "Luxi Mono"
       (/ staff-height pt 16)))
}

global = {
  \key g \minor
  \time 3/4
}

sopMusic = \relative c'' {
  bf4->-\mf^\solo a8 bf g4-\ten
  \repeat volta 2 {
    bf-> a8 bf g4-\ten
    bf-\markup { \smaller\dynamic "pp" \italic\smaller "simile" }^\all a8 bf g4
    bf a8 bf g4
    bf-\markup { \smaller\italic "poco cresc." } a8 bf g4
    bf a8 bf g4
    bf a8 bf g4
    bf a8 bf g4
    bf a8 bf g4
    bf a8 bf g4
    bf a8 bf g4
    bf a8 bf g4
    bf^\mp a8 bf g4
    bf a8 bf g4
    bf a8 bf g4
    bf a8 bf g4
    d'4^\mf c8 d bf4
    d^\< c8 d bf4
    d c8 d bf4
    d c8 d bf4-\!
    g'^\f g8 g f( ef)
    d4 d8 d c( bf)
    c4 c8 c d( c)
    g4^\dim g8 g g4
    d8^\mf^\<( e fs g a bf-\!)
    c^\>( d) c4 bf-\!
    d,8^\pp^\<( e fs g a bf-\!)
    c^\>( d) c4 bf-\!
    bf4^\mp a8^\markup { \smaller\italic "poco a poco dim." } bf g4
    bf a8 bf g4
    bf a8 bf g4
    bf a8 bf g4
  }
  \alternative {
    { bf4^\mf^\solo a8 bf g4 }
    { g2.~ g~ g d'4->^\solo c8^\rit[ d] g, r}
  }
}

altoMusic = \relative c'' {
  R2.
  \repeat volta 2 {
    R R R
    g2.^\pp f ef d
    g^\p f ef d
    g4^\mp g8 g g4
    g g8 g g4
    g g8 g g4
    g g8 g g4
    bf^\mf a8 bf g4 
    bf^\< a8 bf g4
    bf a8 bf g4
    bf a8 bf g4-\!
    g^\f g8 g g4
    g g8 g g4
    g g8 g g4
    g^\dim g8 g g4
    d2.^\mf e4 fs g
    d2.^\pp e4 fs g
    d2.^\mp( c)( f)( ef)(
  }
  \alternative {
    { d2) r4 }
    { d2.~ d~ d bf'4->^\solo a8^\rit[ bf] g r }
  }
}

tenorMusic = \relative c' {
  R2.
  \repeat volta 2 {
    R R R R R R R
    ef2.^\p d c g
    c4^\mp c8 c c4
    d d8 d d4
    ef ef8 ef ef4
    d d8 d d4
    d2.^\mf e^\< f4( ef) d
    g8( f) ef4 d-\!
    d^\f ef8 ef d( c)
    d4 d8 d d4
    ef ef8 ef f( ef)
    d4^\dim d8 d d4
    bf4^\mf^\< a8 bf g4-\!
    bf^\> a8 bf g4-\!
    bf4^\pp^\< a8 bf g4-\!
    bf4^\> a8 bf g4-\!
    g2.~^\mp g~ g~ g~
  }
  \alternative {
    { g2 r4 }
    { bf4 a8 bf g4 bf a8 bf g4 bf a8 bf g4 R2. }
  }
}

bassMusic = \relative c {
  R2.
  \repeat volta 2 {
    R R R R R R R R R R R
    ef4^\mp ef8 ef ef4
    g g8 g g4
    c c8 c c4
    g g8 g g4
    g^\mf g8 g g4
    g^\< g8 g g4
    g g8 g g4
    g g8 g g4-\!
    bf^>^\f a8-> bf-> g4->^\ten
    bf^\markup { \smaller\italic "simile" } a8 bf g4
    bf a8 bf g4
    bf^\dim a8 bf g4
    d2.^\mf d d~^\pp d2 ef4
    g2.^\mp~ g~ g~ g~
  }
  \alternative {
    { g2 r4 }
    { g2.\repeatTie~ g~ g R2. }
  }
  \bar "|."
}

sopWords = \lyricmode {
  Щед- рик щед- рик, щед- рi- воч- ка-,
  при- лe- тi- ла ла- стi- воч- ка,
  ста- ла со- бi ще- бе- та- ти,
  гос- по- да- ря ви- кли- ка- ти:
  
  «Вий- ди, вий- ди, гос- по- да- рю,
  по- ди- ви- ся на ко- ша- ру,
  там о- веч- ки по- ко- ти- лись,
  а яг- нич- ки на- ро- ди- лись.
  
  В~те- бе то- вар весь хо- ро- ший,
  бу- деш ма- ти мiр- ку гро- шей,
  В~те- бе то- вар весь хо- ро- ший,
  бу- деш ма- ти мiр- ку гро- шей,
  
  в~те- бе жiн- ка чор- но- бро- ва,
  хоч не гро- шей, то по- ло- ва,
  в~те- бе жiн- ка чор- но- бро- ва.»
  
  Щед- рик щед- рик,
  M—
  ла- стi- воч- ка.
}
sopTransWords = \lyricmode {
  Shche- dryk shche- dryk, shche- dri- voch- ka,
  pry- le- ti- la la- sti- voch- ka,
  sta- la so- bi shche- be- ta- ty,
  hos- pod- ar- ya vyk- lyk- a- ty:
  
  “Vyy- dy, vyy- dy, ho- spo- dar- yu,
  po- dy- vy- sya na ko- sha- ru,
  tam o- vech- ky po- ko- ty- lys’,
  a yah- nych- ky na- ro- dy- lys’.
  
  V~te- be to- var ves’ kho- ro- shyy,
  bu- desh’ ma- ty mir- ku hro- shey,
  V~te- be to- var ves’ kho- ro- shyy,
  bu- desh’ ma- ty mir- ku hro- shey,
  
  v~te- be zhin- ka chor- no- bro- va,
  khoch ne hro- shey, to po- lo- va,
  v~te- be zhin- ka chor- no- bro- va.”
  
  Shche- dryk shche- dryk,
  M—
  la- sti- voch- ka.
}

altoWords = \lyricmode {
  ста- ла со- бi ще- бе- та- ти,
  там о- веч- ки по- ко- ти- лись,
  а яг- нич- ки на- ро- ди- лись.
  
  В~те- бе то- вар весь хо- ро- ший,
  бу- деш ма- ти мiр- ку гро- шей,
  В~те- бе то- вар весь хо- ро- ший,
  бу- деш ма- ти мiр- ку гро- шей,
  
  в~те- бе жiн- ка чор- но- бро- ва.
  M—
  (m)—
  ла- стi- воч- ка.
}
altoTransWords = \lyricmode {
  sta- la so- bi shche- be- ta- ty,
  tam o- vech- ky po- ko- ty- lys’,
  a yah- nych- ky na- ro- dy- lys’.
  
  V~te- be to- var ves’ kho- ro- shyy,
  bu- desh’ ma- ty mir- ku hro- shey,
  V~te- be to- var ves’ kho- ro- shyy,
  bu- desh’ ma- ty mir- ku hro- shey,
  
  v~te- be zhin- ka chor- no- bro- va.
  M—
  (m)—
  la- sti- voch- ka.
}

tenorWords = \lyricmode {
  ще- бе- та- ти,
  там о- веч- ки по- ко- ти- лись,
  а яг- нич- ки на- ро- ди- лись.
  
  В~те- бе то- вар хо- ро- ший,
  В~те- бе то- вар весь хо- ро- ший,
  бу- деш ма- ти мiр- ку гро- шей,
  
  хоч не гро- шей, то по- ло- ва,
  в~те- бе жiн- ка чор- но- бро- ва.
  
  M—
  
  Щед- рик щед- рик, щед- рi- воч- ка-,
  при- лe- тi- ла
}
tenorTransWords = \lyricmode {
  shche- be- ta- ty,
  tam o- vech- ky po- ko- ty- lys’,
  a yah- nych- ky na- ro- dy- lys’.
  
  V~te- be to- var kho- ro- shyy,
  V~te- be to- var ves’ kho- ro- shyy,
  bu- desh’ ma- ty mir- ku hro- shey,
  
  khoch ne hro- shey, to po- lo- va,
  v~te- be zhin- ka chor- no- bro- va.
  
  M—
  
  Shche- dryk shche- dryk, shche- dri- voch- ka,
  pry- le- ti- la
}

bassWords = \lyricmode {
  там о- веч- ки по- ко- ти- лись,
  а яг- нич- ки на- ро- ди- лись.
  
  В~те- бе то- вар весь хо- ро- ший,
  бу- деш ма- ти мiр- ку гро- шей,
  В~те- бе то- вар весь хо- ро- ший,
  бу- деш ма- ти мiр- ку гро- шей,
  
  в~те- бе жiн- ка.
  M—
  (m)—
}
bassTransWords = \lyricmode {
  tam o- vech- ky po- ko- ty- lys’,
  a yah- nych- ky na- ro- dy- lys’.
  
  V~te- be to- var ves’ kho- ro- shyy,
  bu- desh’ ma- ty mir- ku hro- shey,
  V~te- be to- var ves’ kho- ro- shyy,
  bu- desh’ ma- ty mir- ku hro- shey,
  
  v~te- be zhin- ka
  M—
  (m)—
}

choirStaff = \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup {\right-align "S"}
      \override StaffSymbol #'ledger-line-thickness = #'(0.4 . 0.1)
    } {
      \setStaffElements
      \global \clef treble
      \tempo "Allegretto"
      \new Voice = "sopranos" {
        \setNoteSize \sopMusic
      }
    }
    \new Lyrics \lyricsto "sopranos" {
      \setLyricSize
      \sopWords
    }
    \new Lyrics \lyricsto "sopranos" {
      \setLyricSize
      \override LyricText #'font-shape = #'italic
      \sopTransWords
    }
    \new Staff \with {
      instrumentName = \markup {\right-align "A"}
      \override StaffSymbol #'ledger-line-thickness = #'(0.4 . 0.1)
    } {
      \setStaffElements
      \global \clef treble
      \new Voice = "altos" {
        \setNoteSize \altoMusic
      }
    }
    \new Lyrics \lyricsto "altos" {
      \setLyricSize
      \altoWords
    }
    \new Lyrics \lyricsto "altos" {
      \setLyricSize
      \override LyricText #'font-shape = #'italic
      \altoTransWords
    }
    \new Staff \with {
      instrumentName = \markup {\right-align "T"}
      \override StaffSymbol #'ledger-line-thickness = #'(0.4 . 0.1)
    } {
      \setStaffElements
      \global \clef "treble_8"
      \new Voice = "tenors" {
        \setNoteSize \tenorMusic
      }
    }
    \new Lyrics \lyricsto "tenors" {
      \setLyricSize
      \tenorWords
    }
    \new Lyrics \lyricsto "tenors" {
      \setLyricSize
      \override LyricText #'font-shape = #'italic
      \tenorTransWords
    }
    \new Staff \with {
      instrumentName = \markup {\right-align "B"}
      \override StaffSymbol #'ledger-line-thickness = #'(0.4 . 0.1)
    } {
      \setStaffElements
      \global \clef bass
      \new Voice = "basses" {
        \setNoteSize \bassMusic
      }
    }
    \new Lyrics \lyricsto "basses" {
      \setLyricSize
      \bassWords
    }
    \new Lyrics \lyricsto "basses" {
      \setLyricSize
      \override LyricText #'font-shape = #'italic
      \bassTransWords
    }
  >>

\score {
  \new GrandStaff <<
    \choirStaff
    \new PianoStaff \with {
      instrumentName = \markup \column { "Piano" \smaller "(for reh." \smaller "only)" }
      \override StaffSymbol #'ledger-line-thickness = #'(0.4 . 0.1)
    } <<
      \new Staff {
        \setStaffElements
        \global \clef treble
        <<\setNoteSize \turnOffMarkup \sopMusic \\
          \setNoteSize \turnOffMarkup \altoMusic>>
      }
      \new Staff {
        \setStaffElements
        \global \clef bass
        <<\setNoteSize \turnOffMarkup \tenorMusic \\
          \setNoteSize \turnOffMarkup \bassMusic>>
      }
    >>
  >>
  \layout { }
}

\score {
  \unfoldRepeats \choirStaff
  \midi { \tempo 4 = 184 }
}
