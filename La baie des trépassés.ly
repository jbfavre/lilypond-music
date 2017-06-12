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

\score {
  \relative c' {
    \key aes \major
    \time 3/4
    \partial 4
      c8    e              f4   f   g   aes aes bes aes g   f   g2
      c,8   d   | \break | e4   e   f   g   g   aes bes aes g   a2
      f8   (g)   | \break | a4   a   bes c   c   des ees des c   bes2
      ees,8 f   | \break | g4   g   aes bes bes c   des c   bes c2
      c8    bes | \break | aes4 bes c   des bes aes g   aes bes c2
      aes8  g   | \break | f4   g   aes g   fis g   bes aes g   a2
      c8    bes | \break | a4   bes c   des bes aes g   aes bes c2
      aes8  g   | \break | f4   g   aes g   fis g   bes aes g   f2
      c8    e8  | \break | f4   g   aes g   fis g   c,  d   e   f2.
  }
  \addlyrics {
    J’i -- ma -- gi -- ne sans peine les âm -- es dé -- chi -- rées
    Des ma -- rins ca -- pi -- taines aux ba -- teaux é -- ven -- trés,
    Tels__ gran -- de ba -- leine, d’a -- voir trop na -- vi -- gué,
    Des mois et des se -- maines, es -- pé -- rant ra -- me -- ner
    Ce que la Mer dé -- dai -- gn’et leur veut bien lais -- ser;
    Lut -- tes her -- cu -- léen -- nes, ef -- forts dé -- se -- spé -- rés,
    Grande a -- ven -- ture hu -- maine, au prix si cher pa -- yé,
    Mais la Mer sou -- ve -- raine, fi -- nit par tri -- om -- pher
    Et les dros -- se, hau -- taine, en Baie des Tré -- pas -- sés.
  }
  \layout { }
  \midi { \tempo 4 = 150 }
}
