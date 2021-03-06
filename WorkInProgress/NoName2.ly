\version "2.20.0"
\language "english"
\include "libs/layouts/book-titling.ily"

#(define absolute-volume-alist '())
#(set! absolute-volume-alist
      (append
       '(
         ("ff" . 1)
         ("f" . 0.80)
         ("mf" . 0.65)
         ("mp" . 0.50)
         ("p" . 0.35)
         ("pp" . 0.20)
         )
       absolute-volume-alist))
%{ Default values from /usr/share/lilypond/2.20.0/scm/midi.scm
         ("ff" . 1)
         ("f" . 0.80)
         ("mf" . 0.65)
         ("mp" . 0.50)
         ("p" . 0.35)
         ("pp" . 0.20)
%}
\header {
  title = "No name (yet) 2"
  composer = "Jean Baptiste Favre"
  opus = "Op. x"
  dedication = \markup { \italic "Saint Pierre Quiberon, septembre 2020" }
  subtitle = ""
  tagline = ""
  date = "Saint Pierre Quiberon, septembre 2020"
}

\paper {
  #(include-special-characters)
  print-all-headers = ##f
  max-systems-per-page = 4
%{  bookTitleMarkup = \markup \column {
    \fill-line { \fontsize #5 \fromproperty #'header:composer }
    \when-property #'header:date \fill-line { \combine \vspace #1.2 \fontsize #1 \sans \fromproperty #'header:date }
    \combine \null \vspace #14
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #4
    \fill-line { \fontsize #10 \fromproperty #'header:title }
    \combine \null \vspace #1
    \fill-line { \when-property #'header:subtitle \fontsize #3 \sans \fromproperty #'header:subtitle }
    \combine \null \vspace #1
    \fill-line { \postscript #"-10 0 moveto 20 0 rlineto stroke" }
    \when-property #'header:opus \fill-line { \combine \vspace #1.5 \fontsize #5 \sans \bold \fromproperty #'header:opus }
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #14
    \fill-line{
      \column{
        \when-property #'header:poet \fill-line {
          \concat { \typewriter "Paroles: " \fontsize #2 \italic \fromproperty #'header:poet }
        }
        \when-property #'header:arranger \fill-line {
          \concat { \typewriter "Arrangements: " \fontsize #2 \italic \fromproperty #'header:arranger }
        }
      }
    }
  }
  scoreTitleMarkup = \markup {
    \column {
      \vspace #0.5
      \fill-line {
        \line { "" }
        \center-column { \fontsize #6 \bold \fromproperty #'header:title }
        \line { "" }
      }
      \fill-line {
        \line { "" }
        \center-column { "" }
        \line {
          \right-column {
            \fontsize #1 \fromproperty #'header:composer
            \fontsize #0.8 \sans \fromproperty #'header:opus
          }
        }
      }
      \vspace #1
    }
  }
%}
}

%tagName = #'no-figuredbass
tagName = ""

fluteMusic = \relative c''' {
        r2. r2. r2. r2.
        %  5 - \mark "A"
        \repeat unfold 2 { c4. bf8 af bf c2 af4 (df8 ef f ef df4) c2. \breathe c8 (bf af bf c4) bf8 (af g af bf4) }
        \alternative {
          { af8 (g f g af4) g4. r8 \breathe df'4 }
          { af4 bf g f2. }
        }
}
pianoUpDynamics = {
        \tempo 4 = 165
        s2.*4 \break
        %  5 - \mark "A"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        \bar "||"
%{
        % 21 - \mark "B"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        \bar "||"
        % 37 - \mark "C"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        \bar "||"
        % 53 - \mark "D"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        % 69 - \mark "E"
        \mark \default
        s2.*4 \break
        s2.*4 \break
        \bar "|."
%}
}
pianoUpOneMusic = \relative c' {
        s2.*2
        af'2 g4 f4. ef8 df4
        %  5 - \mark "A"
        af'2 g4 f4. f8 f4
        af2 g4 f4. ef8 df4
        af'2 g4 f4. ef8 df4
        af'2 g4 g4. g4.
        af2 g4 f4. ef8 df4
        af'2 g4 g4. e8 g4
        af2 g4 g4. ef8 g4
        f4 g g af2.
%{
        % 21 - \mark "B"
        \repeat unfold 2 { g4. af8 g f g2 g4 (af8 bf c bf af4) g2. \breathe af8 (bf c bf af4) g8 (af bf af g4) }
        \alternative {
          { f8 (g af g f4) g2. \breathe }
          { af4 bf c f,2 d'4 }
        }
        % 37 - \mark "C"
        \repeat unfold 2 { c4. b8 af b c2 c4 (df8 e f e df4) c2. \breathe c8 (b af b c4) b8 (af g af b4) }
        \alternative {
          { af8 (g f g af4) g2 \breathe df'4 }
          { af4 b g f2. }
        }
        % 53 - \mark "D"
        \repeat unfold 2 { g4. af8 g f g2 g4 (af8 b c b af4) g2. \breathe af8 (b c b af4) g8 (af b af g4) }
        \alternative {
          { f8 (g af g f4) g2. \breathe }
          { af4 b c f,2 d'4 }
        }
        % 69 - \mark "E"
        c4. bf8 af bf c2 c4 (df8 ef f ef df4) c2. \breathe c8 (bf af bf c4) bf8 (af g af bf4) c4 d e f4 f,2
%}
}
pianoUpTwoMusic = \relative c' {
        s2.*2
        %  5 - \mark "A"
        c2. c2. c2. c2. df2. c2.
        ef2. df2. f2. s2.
        f2. f2. f2. c2.
        c2. c2. f4 df e f2.
%{
        % 21 - \mark "B"
        s2.*16
        % 37 - \mark "C"
        s2.*16
        % 53 - \mark "D"
        s2.*16
        % 69 - \mark "E"
        s2.*8
%}
}

pianoDownOneMusic = \relative c {
        <<
          { \mergeDifferentlyHeadedOn
            \mergeDifferentlyDottedOn
            s2.*4
            %  5 - \mark "A"
            f8 af c f c af f8 af c f c af
            f8 bf df f df bf
            f8 af c f c af
            af c ef af ef c
            g bf df g df bf
            f af c f c af
            e g c e c g
            f8 af c f c af
            f8 af c f c af
            f8 bf df f df bf
            e, g c e c g
            ef af c ef c af
            g bf ef g ef bf
            c4 df c << c2. \\ {f,8 f16 f16 f8 f8 f8 f8} >>
          } \\
          { s2.*4
            %  5 - \mark "A"
            f,2. f f f af g f e f f f e ef g
          } % \\
          %{ {\voiceFour \shiftOff
            f,2 f4 f4. f8 f4 f2 f4 f4. f8 f4
            %  5 - \mark "A"
            f2 f4 f4. f8 f4 f2 f4 f4. f8 f4
            af2 af4 bf4. bf8 bf4 c2 c4 c4. c4.
            f,2 f4 f4. f8 f4 bf2 bf4 c4. c8 c4
            af2 af4 ef'4. ef8 e4
            f4 bf, c f8 f16 f16 f8 f8 f8 f8
          }%}
        >>

%{
        % 21 - \mark "B"
        s2.*16
        % 37 - \mark "C"
        s2.*16
        % 53 - \mark "D"
        s2.*16
        % 69 - \mark "E"
        s2.*8
%}
}
pianoDownTwoMusic = \relative c, { \voiceFour
        f2 f4 f4. f8 f4 f2 f4 f4. f8 f4
        %  5 - \mark "A"
        \override NoteColumn.force-hshift = #0 f2 f4 f4. f8 f4 f2 f4 f4. f8 f4
        af2 af4 bf4. bf8 bf4 c2 c4 c4. c4.
        f,2 f4 f4. f8 f4 bf2 bf4 c4. c8 c4
        af2 af4 ef'4. ef8 e4
        f4 bf, c f,2.
%{
        % 21 - \mark "B"
        c2 c4 c4. c8 c4 df2 bf4 c4. c8 c4 af2 af4 ef'4. ef8 e4 f2 df4 c4. c8 c4
        bf2 bf4 c4. c8 c4 f2 bf,4 c4. c8 c4 f2 f4 bf,4. bf8 e4 f4 bf, c f2.
        % 37 - \mark "C"
        s2.*16
        % 53 - \mark "D"
        s2.*16
        % 69 - \mark "E"
        s2.*8
%}
}
pianoDownDynamics = {
        s2.*4
        %  5 - \mark "A"
        s2.*16
%{
        % 21 - \mark "B"
        s2.*16
        % 37 - \mark "C"
        s2.*16
        % 53 - \mark "D"
        s2.*16
        % 69 - \mark "E"
        s2.*8
%}
      }

basseChiffree = {
        s2.*4
        %  5 - \mark "A"
        \figuremode { <5>2. <5> <6 4> <5> <5> <6> <6 4> <_!> <5> <5> <5> <_!> <5> <6 5/>2 <6>4 <5>4 <6> <_!> <5>2. }
%{
        % 21 - \mark "B"
        \figuremode { <5>2. <5> <6>2 <5>4 <5>2. <5> <5>2 <6>4 <5>2 <5>4 <5>2. <6> <5> <5>2 <5>4 <5>2. <5> <5>2 <6>4 <5> <6> <5> <5>2. }
        % 37 - \mark "C"
        \figuremode { }
        % 53 - \mark "D"
        \figuremode { }
        % 69 - \mark "E"
        \figuremode { }
%}
}
basseDegres = {
        s2.*4
        %  5 - \mark "A"
        \figuremode { <I>2. <I> <IV> <I> <III> <II> <I> <V> <I> <I> <IV> <V> <III> <V> <I>4 <II> <V> <I>2. }
%{
        % 21 - \mark "B"
        \figuremode { <V> <V> <IV> <V> <III> <VII>2 <V>4 <I>2 <VI>4 <V>2. <II> <V> <I>2 <VI>4 <V>2. <I> <IV>2 <V>4 <I> <II> <V> <I>2. }
        %\mark "C"
        \figuremode { }
        % 53 - \mark "D"
        \figuremode { }
        % 69 - \mark "E"
        \figuremode { }
%}
      }

%{
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
      \tag #'no-figuredbass \new FiguredBass { \basseChiffree }
      \tag #'no-figuredbass \new FiguredBass { \basseDegres }
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
%}

\score {
  \keepWithTag midi <<
    \new Staff \with { instrumentName = "Flute" shortinstrumentName = "F." }
    <<
      \set Staff.midiInstrument = "synth bass 1"
        \set Score.markFormatter = #format-mark-box-alphabet
        \clef treble \time 3/4 \key f \minor
        \tag #'midi \set Voice.midiMinimumVolume = #0.4
        \tag #'midi \set Voice.midiMaximumVolume = #1
        \new Voice << \fluteMusic >>
    >>
    \new Staff \with { instrumentName = "Violoncelle" shortinstrumentName = "V." }
    <<
      \set Staff.midiInstrument = "electric bass (pick)"
        \set Score.markFormatter = #format-mark-box-alphabet
        \clef bass \time 3/4 \key f \minor
        \tag #'midi \set Voice.midiMinimumVolume = #0.4
        \tag #'midi \set Voice.midiMaximumVolume = #1
        \new Voice << \pianoDownTwoMusic >>
    >>
    \new PianoStaff \with { instrumentName = "Piano" shortInstrumentName = "P." }
    <<
      \new Staff
      <<
        \tag #'midi \set Staff.midiMinimumVolume = #0.2
        \tag #'midi \set Staff.midiMaximumVolume = #0.8
        \set Staff.midiInstrument = "acoustic grand"
        \set Score.markFormatter = #format-mark-box-alphabet
        \clef treble \time 3/4 \key f \minor
        \new Dynamics \pianoUpDynamics
        \new Voice << \voiceOne \pianoUpOneMusic >>
        \new Voice << \voiceTwo \pianoUpTwoMusic >>
      >>
      \new Staff
      <<
        \tag #'midi \set Staff.midiMinimumVolume = #0.2
        \tag #'midi \set Staff.midiMaximumVolume = #0.8
        \set Staff.midiInstrument = "acoustic grand"
        \set Score.markFormatter = #format-mark-box-alphabet
        \clef bass \time 3/4 \key f \minor
        \new Voice << \voiceOne \pianoDownOneMusic >>
        \new Dynamics \pianoDownDynamics
        \tag #'no-figuredbass \new FiguredBass { \basseChiffree }
        \tag #'no-figuredbass \new FiguredBass { \basseDegres }
      >>
    >>
  >>
  \layout {
    \context {
      \FiguredBass
      \override BassFigure #'font-size = #-1
    }
  }
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}