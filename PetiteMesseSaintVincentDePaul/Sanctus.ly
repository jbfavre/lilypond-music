\version "2.18.2"
\language "english"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

sanctusGlobal = {
  \key e \major
  \time 3/8
  \tempo 4. = 50
}

sanctusSolistMusic =  \relative c' {
    \repeat volta 2 {
      b'4 b8 cs4 b8 b (a gs) fs4. e8 fs gs \break a8 (gs) e
    }
    \alternative {
      { e4 fs8 gs4. }
      { e8 (ds16 cs16) ds8 e4. \break }
    }
}
sanctusSolistLyrics = \lyricmode {
    \repeat volta 2 { San -- ctus, San -- ctus, San -- ctus,
    Do -- mi -- nus  De -- us }
    \alternative {
      { Sab -- ba -- oth }
      { Sab -- ba -- oth }
    }
  }

sanctusVerseMusic =  \relative c' {
    \repeat volta 2 {
        \cadenzaOn \stemOff gs'\breve \cadenzaOff \stemOn
        a8 a a
        gs4. fs \break
        e8 fs (gs) a8 gs e 
    }
    \alternative {
      { e4 (fs8) gs4. \break }
      { e8 (ds16 cs16 ds8) e4. }
    }
  }
sanctusVerseOneLyrics = \lyricmode {
    \once \override LyricText.self-alignment-X = #-1
    "Pleni sunt caeli et terra" gló -- ri -- a tu -- a.
    Ho -- sán -- na in ex -- cél -- sis.
  }
sanctusVerseTwoLyrics = \lyricmode {
    \once \override LyricText.self-alignment-X = #-1
    "Benedíctus qui venit in nómine" Dó _  _ -- mi -- ni.
    Ho -- sán -- na in ex --
    \repeat unfold 2 { \skip 1 }
    cél -- sis.
  }

sanctusSopranoMusic = \sanctusSolistMusic
sanctusSopranoLyrics = \sanctusSolistLyrics

sanctusAltoMusic = \relative c' {
    gs'
    % gs'8 (fs) gs e4 e8 ds8 (cs4) ds4.
    % a8 
    % b'8 a b cs a cs b (a16 gs16) a8 b4.
  }
sanctusAltoLyrics = \lyricmode {
  bla
  }

sanctusTenorMusic = \relative c {
  b'
  }
sanctusTenorLyrics = \lyricmode {
  
  }

sanctusBasseMusic = \relative c {
    \repeat volta 2 { e4 e8 a4 e8 gs (fs cs) b4. cs4. a4. }
    \alternative {
      { fs8 b4 <\parenthesize e, e'>4. }
      { fs8 b4 <\parenthesize e, e'>4. }
    }
    
  }
sanctusBasseLyrics = \lyricmode {
  }
