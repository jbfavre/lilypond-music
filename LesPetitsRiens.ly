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
  title = "Les petits riens (motifs)"
  composer = "Jean Baptiste Favre"
  opus = "Op. x"
  dedication = \markup { \italic "Saint Pierre Quiberon, novembre 2020" }
  subtitle = ""
  tagline = ""
  date = "Saint Pierre Quiberon, novembre 2020"
}

%{
\header {
  dedication = "dédicace"
  title = "Titre"
  subtitle = "sous-titre"
  subsubtitle = "sous-sous-titre"
  instrument = "pour piano"
  composer = "Jean Baptiste Favre"
  arranger = "Jean Baptiste Favre"
  poet = "Jean Baptiste Favre"
  meter = "mètre"
  piece = "pièce"
  opus = "op. ?"
  copyright = "2020"
  tagline = "slogan"
}
%}
\paper {
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Arial"
     #:sans "Cantarell thin"
    ))
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
removeTags = #'(school)
keepTags   = #'(visuel notvideo)

% Controls Midi dynamics inclusion
% Used with \keepWithTag
% FiguredBass will be displayed if midiTag is set to "midi"
midiTag = "midi"
midiInstrumentName = "acoustic grand"

global = {
  \key e \minor
  \time 2/4
}

rightDynamics = {
  %\tempo 4 = 60
  s2*8 \break
  s2*8 \break
  s2*8 \break
  s2*8 \break
}
rightOne = \relative c'' {
  \global
  % Couplets
  g'4 fs8 e fs4 r g a8 g fs4 r
  e8 ds cs4 ds r e fs8 e ds4 r
  g4 g fs4 r e4 e ds4 r
  e4 e ds4 r b4 c! b4 r
  % Refrain
  e4 d8 c b4 c8 b a4 cs b4 r
  e4 fs8 e d4 e8 d cs4 cs b r
  g'4 fs8 e d4 e8 d cs4 cs ds r
  g4 fs8 e d4 c8 b c4 c b r
}

rightTwo = \relative c' {
  \global
  e4 a b4 r e,4 e ds r
  g4 a b r g fs fs r
  e4 a b r g a8 g fs4 r
  e8 g a4 b4 r g4 a8 g fs4 r
  s2*12
  b4 a8 g a4 a a a fs r
}
rightTwoLyrics = \lyricmode {
  \set stanza = #"1. "
  Tom -- be la pluie, souf -- fle le vent
  nu -- a -- ges gris, nu -- a -- ges blancs
  Pas -- sent les jours; mais pas le temps.
  \set stanza = #"2. "
  La ma -- rée monte, et puis des -- cend,
  Vol d'al -- ba -- tros, dans le cou -- chant;
  Pas -- sent les jours; mais pas le temps.
  Pas le temps.
}

leftOne = \relative f {
  \global
  b4 cs ds r b4 c! ds r
  b4 a8 g fs4 r b4 c! b r
  b4 cs ds r b c! b r
  b4 cs ds r e fs8 e ds4 r
  s2*12
  r8 b4 b8 r8 d!8 fs d r8 e8 fs e e cs ds4
}
leftOneLyrics = \lyricmode {
  Pas -- sent jours; pas le temps.
  Pas -- sent jours; pas le temps.
  Pas -- sent les jours mais, mais pas le, pas le temps.
  Pas le temps.
  }

leftTwo = \relative f {
  \global
  \repeat unfold 4 {
    \mark \default
    e2 b4 r4 e4 a, b4 r4 \bar "||"
  }
  \mark \default
  e,4 fs g r4 a4 as b4 r4 \bar "||"
  \mark \default
  e,4 e fs r8 fs a4 a b r \bar "||"
  \mark \default
  e,4 fs g r4 a4 as b4 r4 \bar "||"
  \mark \default
  e,4 e fs r8 fs a4 a b r \bar "||"
}
leftTwoLyrics = \lyricmode {
  \set stanza = #"1. "
  Pas -- sent les jours, pas le temps.
  Pas -- sent les jours, pas le temps.
  Pas -- sent les jours, pas le temps.
  Pas -- sent les jours, mais pas le temps.
  \set stanza = #"2. "
  Pas -- sent les jours, pas le temps.
  Pas -- sent les jours, pas le temps.
  Pas -- sent les jours, pas le temps.
  Pas -- sent les jours, mais pas le temps.
  Pas le temps.
  }

pianoStaff = \new ChoirStaff
  <<
    \new Staff = "rightOne" \with {
      midiInstrument = "acoustic grand"
    } {
      \new Voice = "rightOneVoice" { \clef treble \rightOne }
      \tag #'midi' \new Voice = "righOneDynamics" { \rightDynamics }
    } %{\addlyrics {
        \set stanza = #"1. "
        Tom -- be la pluie, souf -- fle le vent,
        nu -- a -- ges gris, nu -- a -- ges blancs
      }
      \addlyrics {
        \set stanza = #"2. "
        La ma -- rée monte, et puis des -- cend,
        Vol d'al -- ba -- tros, dans le cou -- chant;
      }
      \addlyrics {
        \set stanza = #"3. "
        La vieille hor -- loge du sa -- _ lon,
        Son -- ne les heures, _ les sai -- sons;
      }
      \addlyrics {
        \set stanza = #"4. "
        Le pain au four, la poule au pot,
        Les ma -- de -- leines, _ thés, gâ -- teaux;
      }
      \addlyrics {
        \set stanza = #"5. "
        Les pro -- me -- nades en fo --  _ rêt,
        Et tous ces oi -- seaux guil -- le -- rets;
      }
      \addlyrics {
        \set stanza = #"6. "
        Le feu dans l'âtre se con -- _ sume,
        La vieil -- le mai -- son que l'on hume;
      }
      \addlyrics {
        \set stanza = #"7. "
        Au loin s'al -- lume un -- e lu -- mière,
        Qui dans la nuit for -- me~un a -- mer;
      }
      \addlyrics {
          Pas le temps.
      }
      \addlyrics {
        \set stanza = #"2. "
        Un jour viendra j'en suis certain,
        Où d'éphémères petits riens,
        Deviendront d'éternels instants;
      } %}
    \new Staff = "rightTwo" \with {
      midiInstrument = "acoustic grand"
    } {
      \new Voice = "rightTwoVoice" { \clef treble \rightTwo }
      \tag #'midi' \new Voice = "righTwoDynamics" { \rightDynamics }
    } %{\addlyrics {
        \set stanza = #"1. "
        Tom -- be la pluie, souf -- fle le vent,
        nu -- a -- ges gris, nu -- a -- ges blancs
        Pas -- sent les jours; mais pas le temps.
      }
      \addlyrics {
        \set stanza = #"2. "
        La ma -- rée monte, et puis des -- cend,
        Vol d'al -- ba -- tros, dans le cou -- chant;
      }
      \addlyrics {
        \set stanza = #"3. "
        La vieille hor -- loge du sa -- _ lon,
        Son -- ne les heu -- res, les sai -- sons;
      }
      \addlyrics {
        \set stanza = #"4. "
        Le pain au four, la poule au pot,
        Les ma -- de -- lei -- nes, thés, gâ -- teaux;
      }
      \addlyrics {
        \set stanza = #"5. "
        Les pro -- me -- nades en fo --  _ rêt,
        Et tous ces oi -- seaux guil -- le -- rets;
      }
      \addlyrics {
        \set stanza = #"6. "
        Le feu dans l'âtre se con -- _ sume,
        La vieil -- le mai -- son que l'on hume;
      }
      \addlyrics {
        \set stanza = #"7. "
        Au loin s'al -- lume un -- e lu -- mière,
        Qui dans la nuit forme un a -- mer;
      }
      \addlyrics {
        \set stanza = #"2. "
        Un jour viendra j'en suis certain,
        Où d'éphémères petits riens,
        Deviendront d'éternels instants;
      }%}
    \tag #'visuel \new Dynamics << \rightDynamics >>
    \new Staff = "leftOne" \with {
      midiInstrument = "acoustic grand"
    } {
      \new Voice = "leftOneVoice" { \clef "treble_8" \leftOne }
    }
    %\context Lyrics = "leftOne" {
    %  \lyricsto "leftOneVoice" { \leftOneLyrics }
    %}
    \new Staff = "leftTwo" \with {
      midiInstrument = "acoustic grand"
    } {
      \new Voice = "leftTwoVoice" { \clef bass \leftTwo }
    }
    %\context Lyrics = "leftTwo" {
    %  \lyricsto "leftTwoVoice" { \leftTwoLyrics }
    %}
  >>

\score {
  \removeWithTag \removeTags \keepWithTag \keepTags \pianoStaff
  \layout {
    \context {
      \FiguredBass
      \override BassFigure #'font-size = #-1
    }
  }
}

\score {
  \removeWithTag \removeTags \keepWithTag midi \pianoStaff
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
