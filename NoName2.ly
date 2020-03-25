\version "2.18.2"
\language "english"

tagName = #'no-figuredbass
%tagName = ""

#(set-global-staff-size 18)

fluteMusic = \relative c'' {
        s2.*4
        %\mark "A"
        s2.*16
        %\mark "B"
        \repeat unfold 2 { c4. bf8 af bf c2 c4 (df8 ef f ef df4) c2. \breathe c8 (bf af bf c4) bf8 (af g af bf4) }
        \alternative {
          { af8 (g f g af4) g2 \breathe df'4 }
          { af4 bf g f2. }
        }
        %\mark "C"
        \repeat unfold 2 { g4. af8 g f g2 g4 (af8 bf c bf af4) g2. \breathe af8 (bf c bf af4) g8 (af bf af g4) }
        \alternative {
          { f8 (g af g f4) g2. \breathe }
          { af4 bf c f,2 d'4 }
        }
        %\mark "D"
        \repeat unfold 2 { c4. b8 af b c2 c4 (df8 e f e df4) c2. \breathe c8 (b af b c4) b8 (af g af b4) }
        \alternative {
          { af8 (g f g af4) g2 \breathe df'4 }
          { af4 b g f2. }
        }
        %\mark "E"
        \repeat unfold 2 { g4. af8 g f g2 g4 (af8 b c b af4) g2. \breathe af8 (b c b af4) g8 (af b af g4) }
        \alternative {
          { f8 (g af g f4) g2. \breathe }
          { af4 b c f,2 d'4 }
        }
        %\mark "F"
        c4. bf8 af bf c2 c4 (df8 ef f ef df4) c2. \breathe c8 (bf af bf c4) bf8 (af g af bf4) c4 d e f4 f,2
      }

pianoUpDynamics = {
      }
pianoUpOneMusic = \relative c'' {
        s2.*4
        %\mark "A"
        s2.*16
        %\mark "B"
        \repeat unfold 2 { c8 df c4 c c8 df ef f ef4 df2. c8 df c bf af bf af2 df4 df4. df8 df4 }
        \alternative {
          { c2 c4 c8 df c bf af g }
          { f4 g c c2. }
        }
        %\mark "C"
        \repeat unfold 2 {
          s2. s2. s2. s2. s2. s2.
        }
        \alternative {
          { s2. s2. }
          { s2. s2. }
        }
        %\mark "D"
        \repeat unfold 2 {
          s2. s2. s2. s2. s2. s2.
        }
        \alternative {
          { s2. s2. }
          { s2. s2. }
        }
        %\mark "E"
        \repeat unfold 16 { s2. } \break
        %\mark "F"
        \repeat unfold 8 { s2. } \break
      }
pianoUpTwoMusic = \relative c' {
        s2.*4
        %\mark "A"
        s2.*16
        %\mark "B"
        \repeat unfold 16 { s2. }
        %\mark "C"
        \repeat unfold 16 { s2. }
        %\mark "D"
        \repeat unfold 16 { s2. }
        %\mark "E"
        \repeat unfold 16 { s2. }
        %\mark "F"
        \repeat unfold 8 { s2. }
      }

pianoDownOneMusic = \relative c' {
        s2.*4
        %\mark "A"
        s2.*16
        %\mark "B"
        \repeat unfold 16 { s2. }
        %\mark "C"
        \repeat unfold 16 { s2. }
        %\mark "D"
        \repeat unfold 16 { s2. }
        %\mark "E"
        \repeat unfold 16 { s2. }
        %\mark "F"
        \repeat unfold 8 { s2. }
      }
pianoDownTwoMusic = \relative c' {
        s2.*4
        %\mark "A"
        s2.*16
        %\mark "B"
        \repeat unfold 16 { s2. }
        %\mark "C"
        \repeat unfold 16 { s2. }
        %\mark "D"
        \repeat unfold 16 { s2. }
        %\mark "E"
        \repeat unfold 16 { s2. }
        %\mark "F"
        \repeat unfold 8 { s2. }
      }
pianoDownDynamics = {
        s2. s2.
        \repeat unfold 16 { s2. }
        %\mark "B"
        \repeat unfold 16 { s2. }
        %\mark "C"
        \repeat unfold 16 { s2. }
        %\mark "D"
        \repeat unfold 16 { s2. }
        %\mark "E"
        \repeat unfold 8 { s2. }
      }

violoncelleMusic = \relative f {
        \repeat unfold 2 { f,2 f'4 f,4. f8 f'4 }
        %  5 - \mark "A"
        \repeat unfold 2 { c4. bf8 af bf c2 c4 (df8 ef f ef df4) c2. \breathe c8 (bf af bf c4) bf8 (af g af bf4) }
        \alternative {
          { af8 (g f g af4) g2 \breathe df'4 }
          { af4 bf g f2. }
        }
        % 21 - \mark "B"
        f2 f4 f4. f8 f4 f2 f4 f4. f8 f4
        f2 f4 f4. f8 f4 f2 f4 c4 c' c,
        f2 f4 f4. f8 f4 bf,2 bf4 c4. c8 c4
        af2 af4 ef'4. ef8 ef4 df4 bf c f8 f16 f16 f8 f8 f8 f8
        % 37 - \mark "C"
        c2 c4 c4. c8 c4 df2 bf4 c4. c8 c4 af2 af4 ef'4. ef8 e4 f2 df4 c4. c8 c4
        bf2 bf4 c4. c8 c4 f2 bf,4 c4. c8 c4 f2 f4 bf,4. bf8 e4 f4 bf, c f2.
        % 53 - \mark "D"
        \repeat unfold 16 { s2. }
        % 69 - \mark "E"
        \repeat unfold 16 { s2. }
        %85 - \mark "F"
        \repeat unfold 8 { s2. }
      }
violoncelleDynamics = {
        \tempo 2. = 55
        s2.*4
        %\mark "A"
        \mark \default
        s2.*6 \break
        s2.*10 \break
        \bar "||"
        %\mark "B"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        \bar "||"
        %\mark "C"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        \bar "||"
        %\mark "D"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        \bar "||"
        %\mark "E"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        %\mark "F"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        \bar "|."
      }
basseChiffree = {
        s2.*4
        %\mark "A"
        s2.*16
        %\mark "B"
        \figuremode { <5> <5> <6 4> <5> <5> <6 4> <5> <_!> <5> <5> <5> <_!> <5> <5>2 <6>4 <5>4 <6> <_!> <5>2. }
        %\mark "C"
        \figuremode { <5>2. <5> <6>2 <5>4 <5>2. <5> <5>2 <6>4 <5>2 <5>4 <5>2. <6> <5> <5>2 <5>4 <5>2. <5> <5>2 <6>4 <5> <6> <5> <5>2. }
        %\mark "D"
        \figuremode { }
        %\mark "E"
        \figuremode { }
        %\mark "F"
        \figuremode { }
      }
basseDegres = {
        s2. s2.
        %\mark "A"
        \figuremode { <I>2. <I> <IV> <I> <I> <IV> <I> <V> <I> <I> <IV> <V> <III> <VII>2 <V>4 <VI>4 <II> <V> <I>2. }
        %\mark "B"
        \figuremode { <V> <V> <IV> <V> <III> <VII>2 <V>4 <I>2 <VI>4 <V>2. <II> <V> <I>2 <VI>4 <V>2. <I> <IV>2 <V>4 <I> <II> <V> <I>2. }
        %\mark "C"
        \figuremode { }
        %\mark "D"
        \figuremode { }
        %\mark "E"
        \figuremode { }
      }

\header {
  title = "No name (yet)"
  composer = "Jean Baptiste Favre"
  poet = ""
  opus = "op. 2"
  dedication = \markup { \italic "Clichy-la-Garenne, mars 2020" }
  subtitle = ""
  tagline = ""
}

\paper {
  #(include-special-characters)
  print-all-headers = ##f
  min-systems-per-page = 4
  max-systems-per-page = 6
}

\score {
  \removeWithTag \tagName <<
    \new Staff \with { instrumentName = "Flute" shortInstrumentName = "F." }
    <<
      \clef treble \time 3/4 \key f \minor
      \fluteMusic
    >>
    \new PianoStaff \with { instrumentName = "Piano" shortInstrumentName = "P." }
    <<
      \new Staff
      <<
        \clef treble \time 3/4 \key f \minor
        \set Score.markFormatter = #format-mark-box-alphabet
        %\new Dynamics \pianoUpDynamics
        \new Voice { \voiceOne \pianoUpOneMusic }
        \new Voice { \voiceTwo \pianoUpTwoMusic }
      >>
      \new Staff
      <<
        \clef bass \time 3/4 \key f \minor
        \new Voice { \voiceOne \pianoDownOneMusic }
        \new Voice { \voiceTwo \pianoDownTwoMusic }
        %\new Dynamics \pianoDownDynamics
      >>
    >>
    \new Staff \with { instrumentName = "Violoncelle" shortInstrumentName = "V." }
    <<
      \clef bass \time 3/4 \key f \minor
      \new Voice { \oneVoice \violoncelleMusic }
      \new Dynamics { \violoncelleDynamics }
      %\tag #'no-figuredbass \new FiguredBass { \basseChiffree }
      %\tag #'no-figuredbass \new FiguredBass { \basseDegres }
    >>
  >>
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    \context {
      \FiguredBass
      \override BassFigure #'font-size = #-1
    }
  }
}