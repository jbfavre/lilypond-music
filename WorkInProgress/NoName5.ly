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
  title = "No Name (yet)5 "
  composer = "Jean Baptiste Favre"
  opus = "Op. x"
  dedication = \markup { \italic "Saint Pierre Quiberon, août 2020" }
  subtitle = "Choral"
  tagline = ""
  date = "Saint Pierre Quiberon, août 2020"
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
removeTags = #'(school)
keepTags   = #'(visuel notvideo)

% Controls Midi dynamics inclusion
% Used with \keepWithTag
% FiguredBass will be displayed if midiTag is set to "midi"
midiTag = "midi"
midiInstrumentName = "acoustic grand"

dynamicsUpStaff = {
    \set Score.markFormatter = #format-mark-box-alphabet
    \once \set Score.tempoHideNote = ##t \tempo 4 = 60
}

dynamicsDownStaff = {
}

sopraneVoice = {
  %\mark "A"
  \relative c' {
    \key g \minor
    \partial 4 d4 g a bf c8 bf a4 a4 \break g \fermata
    a4 bf c d f8 e d4 cs \break d \fermata
    d4 e fs g8 a bf a g4 fs \break g \fermata
    g4 a8 g f e d4 bf8 c d4 d \break ef \fermata
    ef d8 c bf4 c8 bf a4 a g \fermata \break
  }
}

altoVoice = { \voiceTwo
  \relative f' {
    d4 d d g g8 f ef4 fs4 d
    fs4 g a bf bf8 g f4 a a
    fs4 a a g g g a ef
    ef4
  }
}

tenorVoice = {
  \relative f {
    bf4 bf a d c8 d c4 c bf
    d4 d f f d8 c bf4 a d
    a4 cs a bf d8 c bf4 d bf
    bf4
  }
}

basseVoice = {
  %\mark "A"
  \relative f {
    \key g \minor
    g4 g fs g8 f ef d c a d4 g
    d4 g f bf, bf8 c d4 e fs
    d4 cs d ef bf8 c d4 d4 ef4
    ef4 a,8 bf bf c d4 d8 c bf4 d c r
    s2*3
  }
}

basseChiffree = {
  \figuremode {
    %\mark "A"
  }
}
basseDegres = {
  \figuremode {
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