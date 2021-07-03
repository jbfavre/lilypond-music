\version "2.18.2"
\language "english"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

sanctusGlobal = {
  \key e \major
  \time 3/8
  \tempo 4. = 40
}
sanctusSolist_BD_Repeat = \relative c' { e8 fs gs a8 (gs) e }
sanctusSolist_BD_AlternativeOne = \relative c' {
    e8 fs4 gs4.
  }
sanctusSolist_BD_AlternativeTwo = \relative c' { e8 (ds16 cs16) ds8 e4. }
sanctusMainSolistMusic =  \relative c' {
    \mark \default
    \repeat volta 2 {
      b'4 b8 cs4 b8 b (a gs) fs4. \break
      \sanctusSolist_BD_Repeat
    }
    \alternative {
      \sanctusSolist_BD_AlternativeOne
      \sanctusSolist_BD_AlternativeTwo
    } \break
    \mark \default
    \repeat volta 2 {
      \relative c' {
        \cadenzaOn \stemOff b'\breve \cadenzaOff \stemOn
        cs8 cs cs
        b4 (gs8) b4.
      }
      \sanctusSolist_BD_Repeat
    }
    \alternative {
      \sanctusSolist_BD_AlternativeOne
      \sanctusSolist_BD_AlternativeTwo
    }
  }
sanctusMainSolistLyrics = \lyricmode {
    \repeat volta 2 { San -- ctus, San -- ctus, San -- ctus, Dó -- mi -- nus  De -- us }
    \alternative {
      { Sáb -- ba -- oth }
      { Sáb -- ba -- oth }
    }
  }
sanctusVerseOneSolistLyrics = \lyricmode {
    \repeat unfold 17 { \skip 1 }
    \once \override LyricText.self-alignment-X = #-1
    "Pleni sunt cæli et terra" gló -- ri -- a tu -- a.
    Ho -- sán -- na in ex -- cél _ -- sis.
  }
sanctusVerseTwoSolistLyrics = \lyricmode {
    \repeat unfold 17 { \skip 1 }
    \once \override LyricText.self-alignment-X = #-1
    "Benedíctus qui venit in nómine" Dó _  _ -- mi -- ni.
    Ho -- sán -- na in ex --
    \repeat unfold 3 { \skip 1 }
    cél _ -- sis.
  }

sanctusMainSopranoMusic = \sanctusMainSolistMusic
sanctusMainSopranoLyrics = \sanctusMainSolistLyrics
sanctusVerseOneSopranoLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoSopranoLyrics = \sanctusVerseTwoSolistLyrics

sanctusAlto_BD_Repeat = \relative c' { cs8 ds ds cs (e) cs }
sanctusAlto_BD_Alternative = \relative c' {
    cs8 b4 b4.
  }
sanctusMainAltoMusic = \relative c' {
    \repeat volta 2 {
      gs'4 gs8 e4 e8 gs (fs e) fs4.
      \sanctusAlto_BD_Repeat
    }
    \alternative {
      { \sanctusAlto_BD_Alternative }
      { \sanctusAlto_BD_Alternative }
    }
    \repeat volta 2 {
      \cadenzaOn \stemOff gs\breve \cadenzaOff \stemOn
      a8 a a
      gs4 (e8) fs4. \break
      \sanctusAlto_BD_Repeat
    }
    \alternative {
      { \sanctusAlto_BD_Alternative }
      { \sanctusAlto_BD_Alternative }
    }
  }
sanctusMainAltoLyrics = \sanctusMainSolistLyrics
sanctusVerseOneAltoLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoAltoLyrics = \sanctusVerseTwoSolistLyrics

sanctusTenor_BD_Repeat = \relative c' { gs8 a gs fs (gs) a }
sanctusTenor_BD_Alternative = \relative c {
    fs4 a8 gs4.
  }
sanctusTenorMusic = \relative c {
    \repeat volta 2 {
      e'8 (b) gs a (b) cs e (cs b) ds4.
      gs,8 a gs fs (gs) a
    }
    \alternative {
      { \sanctusTenor_BD_Alternative }
      { \sanctusTenor_BD_Alternative }
    }
    \repeat volta 2 {
      \relative c' {
        \cadenzaOn \stemOff d\breve \cadenzaOff \stemOn
        cs8 cs cs
        ds4 (cs8) ds4. \break
      }
      \sanctusTenor_BD_Repeat
    }
    \alternative {
      { \sanctusTenor_BD_Alternative }
      { \sanctusTenor_BD_Alternative }
    }
  }
sanctusMainTenorLyrics = \sanctusMainSolistLyrics
sanctusVerseOneTenorLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoTenorLyrics = \sanctusVerseTwoSolistLyrics

sanctusBasse_BD_Repeat = \relative c { cs8 cs b a (a) cs }
sanctusBasse_BD_Alternative = \relative c {
    a4 b8 <e \parenthesize e,>4.
  }
sanctusMainBasseMusic = \relative c {
    \repeat volta 2 {
      e4 e8 a,4 a8 gs4. b4.
      \sanctusBasse_BD_Repeat
    }
    \alternative {
      { \sanctusBasse_BD_Alternative }
      { \sanctusBasse_BD_Alternative }
    }
    \repeat volta 2 {
      \cadenzaOn \stemOff <e \parenthesize e,>\breve \cadenzaOff \stemOn
      e8 e e
      gs8 (fs e) b4. \break
      \sanctusBasse_BD_Repeat
    }
    \alternative {
      { \sanctusBasse_BD_Alternative }
      { \sanctusBasse_BD_Alternative }
    }
  }
sanctusMainBasseLyrics = \sanctusMainSolistLyrics
sanctusVerseOneBasseLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoBasseLyrics = \sanctusVerseTwoSolistLyrics

sanctusScore = \score {
    <<
      \new ChoirStaff
      <<
        \new Staff \with { instrumentName = "Soprano" shortInstrumentName = "S." }
        <<
          \sanctusGlobal \clef treble
          \new Voice = "sanctusSoprano" { \sanctusMainSopranoMusic }
          \new Lyrics \lyricsto "sanctusSoprano" { \sanctusMainSopranoLyrics }
          \new Lyrics \lyricsto "sanctusSoprano" { \sanctusVerseOneSopranoLyrics }
          \new Lyrics \lyricsto "sanctusSoprano" { \sanctusVerseTwoSopranoLyrics }
        >>
        \new Staff \with { instrumentName = "Alto" shortInstrumentName = "A." }
        <<
          \sanctusGlobal \clef treble
          \new Voice = "sanctusAlto" { \sanctusMainAltoMusic }
          \new Lyrics \lyricsto "sanctusAlto" { \sanctusMainAltoLyrics }
          \new Lyrics \lyricsto "sanctusAlto" { \sanctusVerseOneAltoLyrics }
          \new Lyrics \lyricsto "sanctusAlto" { \sanctusVerseTwoAltoLyrics }
        >>
        \new Staff \with { instrumentName = "Ténor" shortInstrumentName = "T." }
        <<
          \sanctusGlobal \clef "treble_8"
          \new Voice = "sanctusTenor" { \sanctusTenorMusic }
          \new Lyrics \lyricsto "sanctusTenor" { \sanctusMainTenorLyrics }
          \new Lyrics \lyricsto "sanctusTenor" { \sanctusVerseOneTenorLyrics }
          \new Lyrics \lyricsto "sanctusTenor" { \sanctusVerseTwoTenorLyrics }
        >>
        \new Staff \with { instrumentName = "Basse" shortInstrumentName = "B." }
        <<
          \sanctusGlobal \clef bass
          \new Voice = "sanctusBasse" { \sanctusMainBasseMusic }
          \new Lyrics \lyricsto "sanctusBasse" { \sanctusMainBasseLyrics }
          \new Lyrics \lyricsto "sanctusBasse" { \sanctusVerseOneBasseLyrics }
          \new Lyrics \lyricsto "sanctusBasse" { \sanctusVerseTwoBasseLyrics }
        >>
      >>
      %\new PianoStaff \with { \pianoProperties instrumentName = "Orgue" shortInstrumentName = "O." }
      %<<
      %  \set PianoStaff.instrumentName = #"Orgue"
      %  \new Staff <<
      %    \sanctusGlobal \clef treble
      %    \set Staff.printPartCombineTexts = ##f
      %    \partcombine
      %    << \sanctusMainSopranoMusic >>
      %    << \sanctusMainAltoMusic >>
      %  >>
      %  \new Staff <<
      %    \sanctusGlobal \clef bass
      %    \set Staff.printPartCombineTexts = ##f
      %    \partcombine
      %    << \sanctusTenorMusic >>
      %    << \sanctusMainBasseMusic >>
      %  >>
      %>>
    >>
  }