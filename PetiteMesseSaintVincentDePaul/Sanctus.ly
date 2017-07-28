\version "2.18.2"
\language "english"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

sanctusGlobal = {
  \key e \major
  \time 3/8
  \tempo 4. = 50
}

sanctusMainSolistMusic =  \relative c' {
    \repeat volta 2 { b'4 b8 cs4 b8 b (a gs) fs4. e8 fs gs \break a8 (gs) e }
    \alternative {
      { e8 fs4 gs4. }
      { e8 (ds16 cs16) ds8 e4. \break }
    }
    \repeat volta 2 {
        \cadenzaOn \stemOff gs\breve \cadenzaOff \stemOn
        a8 a a
        gs4. fs \break
        e8 fs (gs) a8 gs e 
    }
    \alternative {
      { e4 (fs8) gs4. }
      { e8 (ds16 cs16 ds8) e4. }
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
    Ho -- sán -- na in ex -- cél -- sis.
  }
sanctusVerseTwoSolistLyrics = \lyricmode {
    \repeat unfold 17 { \skip 1 }
    \once \override LyricText.self-alignment-X = #-1
    "Benedíctus qui venit in nómine" Dó _  _ -- mi -- ni.
    Ho -- sán -- na in ex --
    \repeat unfold 2 { \skip 1 }
    cél -- sis.
  }

sanctusMainSopranoMusic = \sanctusMainSolistMusic
%sanctusVerseSopranoMusic =  \sanctusVerseSolistMusic
sanctusMainSopranoLyrics = \sanctusMainSolistLyrics
sanctusVerseOneSopranoLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoSopranoLyrics = \sanctusVerseTwoSolistLyrics

sanctusMainAltoMusic = \relative c' {
    gs'4 gs8 fs4 fs8 gs (fs e) ds4.
  }
sanctusMainAltoLyrics = \sanctusMainSolistLyrics
sanctusVerseOneAltoLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoAltoLyrics = \sanctusVerseTwoSolistLyrics

sanctusTenorMusic = \relative c {
  b'4 ds8 e4 ds8 ds (cs a) b4.
  }
sanctusMainTenorLyrics = \sanctusMainSolistLyrics
sanctusVerseOneTenorLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoTenorLyrics = \sanctusVerseTwoSolistLyrics

sanctusMainBasseMusic = \relative c {
    \repeat volta 2 { e4 gs8 a4 a8 gs (fs e) fs4. cs8 cs b a (a) a }
    \alternative {
      { b4 a8 <e' \parenthesize e,>4. }
      { b4 a8 <e' \parenthesize e,>4. }
    }
    \repeat volta 2 {
        \cadenzaOn \stemOff e\breve \cadenzaOff \stemOn
        ds8 ds ds
        e4. b \break
        cs8 cs b a (a) a }
    \alternative {
      { b4 (a8) <e' \parenthesize e,>4. }
      { b4 (a8) <e' \parenthesize e,>4. }
    }
  }
sanctusMainBasseLyrics = \sanctusMainSolistLyrics
sanctusVerseOneBasseLyrics = \sanctusVerseOneSolistLyrics
sanctusVerseTwoBasseLyrics = \sanctusVerseTwoSolistLyrics
