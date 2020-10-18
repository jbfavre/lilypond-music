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
  title = "No Name (yet) 7"
  composer = "Jean Baptiste Favre"
  opus = "Op. x"
  dedication = \markup { \italic "Saint Pierre Quiberon, septembre 2020" }
  subtitle = "Choral 3"
  tagline = ""
  date = "Saint Pierre Quiberon, octobre 2020"
}

\paper {
  #(include-special-characters)
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Arial"
     #:sans "Cantarell thin"
    ))
  %systems-per-page = 5
  two-sided = ##t
  top-margin = 1.5 \cm
  bottom-margin = 1.5 \cm
  inner-margin = 2 \cm
  outer-margin = 1 \cm
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
%\pageBreak
% Control FiguredBass display
% Used with \keepWithTag
% FiguredBass will be displayed if figuredBassTag is set to "figuredBass"
%removeTags = #'(school)
removeTags = ""
keepTags   = #'(visuel notvideo)

% Controls Midi dynamics inclusion
% Used with \keepWithTag
% FiguredBass will be displayed if midiTag is set to "midi"
midiTag = "midi"
midiInstrumentName = "acoustic grand"

dynamicsUpStaff = {
    \set Score.markFormatter = #format-mark-box-alphabet
    \once \set Score.tempoHideNote = ##f \tempo 4 = 75
    \key g \major
}

dynamicsDownStaff = {
    \key g \major
}

%{
Mes.8-9 : ce choix de degré n’est pas correct puisque la cadence donne des quintes consécutives basse/chant.
          Ici, la 7e dans le IV est valable, car bien préparée/résolue. Mais dommage, le V ne va pas…
Mes. 15-16 : V-VI renversé n’est pas très heureux, et on a des quintes consécutives ténor/chant.
Mes. 17-18 : on a une cadence parfaite en Ré (V-I et non II-V), l’accord du I n’a pas de tierce…
%}
sopraneVoice = {
  %\mark "A"
  \key g \major
  \relative c'' {
    b4 a g a b d c2 b2 \break
    a4 a b b a g a2 \break
    b4 a g a b d c2 b2 \break
    a4 a b b cs cs d2 \break
    %d4. e8 g4. g8 fs d e4 d4 r s2*2 \break
    %r4 a b4. d8 e8 d c b a4 b \break
    %s2*6

%    f4 g a b c2 cs4 r \break
  }
}

altoVoice = { \voiceTwo
  \relative f' {
    g4 fs e fs g fs g2 g
    fs4 d g g g g fs2
    g4 fs e fs g fs g2 g
    fs8 g fs4 g8 a g4 a8 b a g fs2
    %s2*6
    %s2*4
    %r4 fs g4. b8 c8 b a g g4 fs8 e fs2 g2
  }
}

tenorVoice = {
  \key g \major
  \relative c' {
    d4 d8 c b4 d d4 b4 e2 d
    d4 d d e e e d2
    d4 d8 c b4 d d b e2 d
    d4 d4 e4 e e8 d cs b a2
    %s2*3
    %d4. e8 g4. g8 fs d e4
    %d2 s2*3
  }
}

basseVoice = {
  %\mark "A"
  \relative f {
    g4 d e d4 g,4 b4 c8 d e fs g2
    d4 fs g8 fs e d c4 cs d2
    g4 d e d4 g, b c8 d e fs g2
    d4 fs e g a4 a, d2
    %s2*6
    %s2*4
    %r4 d4 e d a8 b c e c2 d g,
  }
}

basseChiffree = {
  \figuremode {
    <5>4 <5> <5> <5> <5> <5> <5>2 <5>
    <5>4 <6> <5> <5> <5> <_> <5>2
    <5>4 <5> <5> <5> <5> <5> <5>2 <5>
    <5>4 <6> <5> <6> <5+> <_> <5>
  }
}
basseDegres = {
  \figuremode {
    <I>4 <V> <VI> <V> <I> <III> <IV>2 <I>
    <V>4 <_> <I> <VI> <IV> <_> <V>2
    <I>4 <V> <VI> <V> <I> <VI> <IV>2 <I>
    <V>4 <_> <VI> <_> <II> <_> <V>
  }
}
pianoMusic = {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "up"
    <<
      \tag #'midi \set Staff.midiInstrument = \midiInstrumentName
      \clef treble \time 2/4
      \new Voice = "soprano" << \tag #'midi \set Voice.midiMinimumVolume = #0.3
                                \tag #'midi \set Voice.midiMaximumVolume = #1
                                \tag #'midi \dynamicsUpStaff
                                \tag #'midi \dynamicsDownStaff
                                \voiceOne \sopraneVoice
      >>
      \new Voice = "alto"    << \tag #'midi \set Voice.midiMinimumVolume = #0.2
                                \tag #'midi \set Voice.midiMaximumVolume = #0.9
                                \tag #'midi \dynamicsUpStaff
                                \tag #'midi \dynamicsDownStaff
                                \voiceTwo \altoVoice
      >>
      \tag #'visuel \new Dynamics << \dynamicsUpStaff >>
    >>
    \new Staff = "down"
    <<
      \tag #'midi \set Staff.midiInstrument = \midiInstrumentName
      \clef bass
      \new Voice = "tenor" << \tag #'midi \set Voice.midiMinimumVolume = #0.2
                              \tag #'midi \set Voice.midiMaximumVolume = #0.9
                              \tag #'midi \dynamicsUpStaff
                              \tag #'midi \dynamicsDownStaff
                              \voiceThree \tenorVoice
      >>
      \new Voice = "bass"  << \tag #'midi \set Voice.midiMinimumVolume = #0.2
                              \tag #'midi \set Voice.midiMaximumVolume = #0.9
                              \tag #'midi \dynamicsUpStaff
                              \tag #'midi \dynamicsDownStaff
                              \voiceFour \basseVoice
      >>
      \tag #'visuel \new Dynamics << \dynamicsDownStaff >>
      \tag #'visuel \tag #'school \new FiguredBass << \basseChiffree >>
      \tag #'visuel \tag #'school \new FiguredBass << \basseDegres >>
     >>
  >>
}


\score {
  \removeWithTag \removeTags \keepWithTag \keepTags \pianoMusic
  \layout {
    \context {
      \FiguredBass
      \override BassFigure #'font-size = #-1
    }
  }
}
\score {
  \removeWithTag \removeTags \keepWithTag midi \pianoMusic
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