\version "2.20.0"
\language "english"

\include "libs/layouts/book-titling.ily"

\header {
  title = "À la cours du Roi"
  subtitle = ""
  composer = "Jean Baptiste Favre"
  opus = "Op. 3"
  tagline = ""
  date = "Île d'Hoëdic, août 2020"
}

%%% To enable processing with ly2video, comment paper block below
\paper {
  #(include-special-characters)
  ragged-last-bottom = ##f
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Arial"
     #:sans "Cantarell thin"
    ))
  max-systems-per-page = 5
  two-sided = ##t
  top-margin = 1.5 \cm
  bottom-margin = 1.5 \cm
  inner-margin = 2 \cm
  outer-margin = 1 \cm
  bookTitleMarkup = \markup \column {
    \fill-line { \fontsize #5 \fromproperty #'header:composer }
    \when-property #'header:date \fill-line { \combine \vspace #1.2 \fontsize #1 \sans \fromproperty #'header:date }
    \combine \null \vspace #14
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #4
    \fill-line { \fontsize #14 \fromproperty #'header:title }
    \combine \null \vspace #1
    \fill-line { \when-property #'header:subtitle \sans \fontsize #3 \fromproperty #'header:subtitle }
    \combine \null \vspace #1
    \fill-line { \postscript #"-10 0 moveto 20 0 rlineto stroke" }
    \when-property #'header:opus \fill-line { \combine \vspace #1.5 \fontsize #3 \sans \bold \fromproperty #'header:opus }
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #14
    \fill-line{
      \column{
        \when-property #'header:poet \fill-line {
          \concat { \typewriter "Paroles: " \fontsize #2 \sans \fromproperty #'header:poet }
        }
        \when-property #'header:arranger \fill-line {
          \concat { \typewriter "Arrangements: " \fontsize #2 \sans \fromproperty #'header:arranger }
        }
      }
    }
  }
  scoreTitleMarkup =  \markup {
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
}
\pageBreak
removeTags = #'(school)
keepTags   = #'(visuel notvideo)

%%% To enable processing with ly2video, uncomment include and paper blockbelow
% To render the score as a video, please run:
% > . ./.venv/bin/activate # to enable Virtualenv
% > LANG=C ly2video -i PianoBar.ly -o PianoBar2.mp4 -x 1280 -y 720 -q1 -f60 --note-cursor -s -r200
%
%\include "libs/ly2video.ily"
%removeTags = #'(notvideo school)
%\paper {
%   page-breaking = #ly:one-line-breaking
%   top-margin    = 148\mm
%   bottom-margin = 148\mm
%   left-margin   = 46\mm
%   right-margin  = 46\mm
%}

midiInstrumentName = "honky-tonk"
global = { \tempo 4. = 50 \time 6/8 \key f \major }
marksToDisplay = {
      }
chordNames = \new ChordNames {
        \chordmode {
        }
      }
sopraneVoice = \relative c' {
  f8. f16 e8 d4 c8 bf8 bf16 c d e f4 f8 g8. f16 g8 a8 bf16 a g f f8 g4 g4. \break
  f8. f16 e8 d4 c8 bf8 bf16 c d e f4 f8 g8. f16 g8 a8 bf16 a g f f4 e8 f4. \break
  g8 c, bf' a8. g16 f8 g16 f g a bf8 a8 f c d16 e d e f8 f16 g f g a bf c f, g4 g4. \break
  g8 c, bf' a8. g16 f8 g16 f g a bf8 a8 f c d16 e d e f8 f16 g f g a bf a4 g8 f4. \break
        }
altoVoice = \relative c' {
        }
tenorVoice = \relative c' {
        }
bassesVoice = \relative f {
  f4 c8 d4. d4 bf8 f4. c'4 c8 f4. d8 bf g c16 c32 c c16 c c c
  f4 c8 d4. d4 bf8 f4. c'4 c8 f4. bf,8 c4 f,4.
  c'4. f c f, d' e f8 g4 c,16 c32 c c16 c c c
  c4.  f c f, d' e f8 g c, f16 c a f a c
        }
numericFiguredBass = \new FiguredBass{
          \figuremode { \bassFigureExtendersOn
          }
        }
degreeFiguredBass = \new FiguredBass{
          \figuremode {
          }
        }
pianoMusic =   \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    \tag #'(notvideo school) \chordNames
    \new Staff = "haut" <<
      \set Staff.midiInstrument = \midiInstrumentName
      \set Score.markFormatter = #format-mark-box-alphabet
      \clef treble
      \global
      \new Voice = "soprane" << \voiceOne \sopraneVoice \marksToDisplay >>
      \new Voice = "alto"    << \voiceTwo \altoVoice >>
    >>
    \new Staff <<
      \set Staff.midiInstrument = \midiInstrumentName
      \clef bass
      \global
      \new Voice = "tenor" << \voiceOne \tenorVoice >>
      \new Voice = "bass"  << \voiceTwo \bassesVoice >>
    >>
    \tag #'(notvideo school) \numericFiguredBass
    \tag #'(notvideo school) \degreeFiguredBass
  >>

\score {
  \removeWithTag \removeTags \keepWithTag \keepTags \pianoMusic
  \layout {}
}
\score {
  \removeWithTag \removeTags \keepWithTag midi \pianoMusic
  \midi {
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}