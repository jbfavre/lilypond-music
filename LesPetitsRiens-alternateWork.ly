\version "2.20.0"
\language "english"
\paper {
#(include-special-characters)
}


#(define-markup-command (arrow-at-angle layout props angle-deg length fill)
   (number? number? boolean?)
   (let* (
           (PI-OVER-180 (/ (atan 1 1) 34))
           (degrees->radians (lambda (degrees) (* degrees PI-OVER-180)))
           (angle-rad (degrees->radians angle-deg))
           (target-x (* length (cos angle-rad)))
           (target-y (* length (sin angle-rad))))
     (interpret-markup layout props
       (markup
        #:translate (cons (/ target-x 2) (/ target-y 2))
        #:rotate angle-deg
        #:translate (cons (/ length -2) 0)
        #:concat (#:draw-line (cons length 0)
                   #:arrow-head X RIGHT fill)))))

splitStaffBothBarLineMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \combine
  \arrow-at-angle #45 #(sqrt 8) ##t
  \arrow-at-angle #-45 #(sqrt 8) ##t
}
splitStaffUpBarLineMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \arrow-at-angle #45 #(sqrt 8) ##t
}
splitStaffDownBarLineMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \arrow-at-angle #-45 #(sqrt 8) ##t
}

splitStaffUpBarLine = {
  \once \override Staff.BarLine.stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
      (ly:bar-line::print grob)
      X RIGHT
      (grob-interpret-markup grob splitStaffUpBarLineMarkup)
      0))
}

splitStaffDownBarLine = {
  \once \override Staff.BarLine.stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
      (ly:bar-line::print grob)
      X RIGHT
      (grob-interpret-markup grob splitStaffDownBarLineMarkup)
      0))
}

\header {
  title = "Les petits riens"
  composer = "Jean Baptiste Favre"
  poet = "@ConteurDeNotes"
  opus = "Op. 3"
  dedication = \markup { \italic "Saint Pierre Quiberon, novembre 2020" }
  subtitle = "pour chœur à quatre voix et soliste baryton"
  tagline = ""
  date = "Saint Pierre Quiberon, novembre 2020"
}

global = {
  \key e \minor
  \time 2/4
}

soprano = {
  \global
  % Sopranes
  \new Voice = "sopranoCouplets" {
    r2 r r r
    \mark "A (8'')"
    r2 r r r
    \mark "16''"
    \relative c''' { g4\f fs8 e fs4 r4 g a8 g fs4 r }
    \mark "24''"
    \relative c''' { g4\mf fs8 e d4 r8 b cs4 cs b4 r }
  } \bar "||"
  \pageBreak
  % Ténors
  r2 r r r
  r2 r r r
  \relative c'' { b4\mp a8 b b4 r b4 c?8 c b4 r }
  \relative c''' { g4\mf fs8 e d4 r8 b cs4 cs b4 r }
  % Altos
  r2 r r r
  r2 r r r
  \relative c'' { r8 e\mp e cs b4 r4 r8 b e c b4 r4 }
  \relative c''' { g4\mf fs8 e d4 r8 b cs4 cs b4 r }
  % Basses
  \once \omit Staff.TimeSignature
  r2 r r r
  r2 r r r
  \relative c''' { g4\mf fs8 e fs4 r4 g a8 g fs4 r }
  \relative c'' { b4\mf c d a8 (cs) ds4 r }
  \relative c''' { g4\mf fs8 e d4 r8 b cs4 cs b2 }
  % Epilogue
  \relative c'' { \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
                  r8\startTextSpan b r g r a r b8 r8 b r g r a r b8\stopTextSpan }
  \relative c'' { bf2\fermata c2\fermata <c d>\fermata <b e>2\fermata }
}

alto = {
  \global
  % Sopranes
  r2 r r r
  \relative c'' { g4\f fs8 e fs4 r4 g a8 g fs4 r }
  \relative c' { r8\mf e a g fs4 r r8 e fs e ds4 r }
  \relative c' { e4\mf a8 a g4 r8 g8 e4 fs4 fs4 r }
  % Ténors
  r2 r r r
  \relative c'' { r8 b a g fs4 r4 r8 ds e g g4 (fs8) r }
  \relative c'' { r8 b a g fs4 r4 r8 ds e g g4 (fs8) r }
  \relative c' { e4\mf a8 a g4 r8 g8 e4 fs4 fs4 r }
  %\pageBreak
  % Altos
  \new Voice = "altosCouplets" {
    r2 r r r
    \mark "C (56'')"
    \relative c'' { g4\f a8 g fs4 r g a8 g fs4 r }
    \mark "1'04''"
    \relative c'' { g4\f a8 g fs4 r g a8 g fs4 r }
  }
  \mark "1'12"
  \relative c' { e4\mf a8 a g4 r8 g8 e4 fs4 fs4 r }
  \bar "||" \break
  % Basses
  \once \omit Staff.TimeSignature
  r2 r r r
  \relative c'' { g4\mf fs8 e fs4 r4 g a8 g fs4 r }
  \relative c'' { g4\mf g8 g fs4 r g4 g8 e fs4 r }
  \relative c'' { g4\mf fs g e4 ds4 r }
  \relative c' { e4\mf a8 a g4 r8 g8 e4 fs4 fs2 }
  \relative c'' { \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
                                 r4\startTextSpan g8 e r4 fs8 fs r4 g8 e r4 fs8 fs\stopTextSpan }
  \relative c'' { g2\fermata a\fermata a\fermata b2\fermata }
}

tenor = {
  \global
  % Sopranes
  r2 r r r
  \relative c' { r8\mf b8 b cs ds4 r r8 b8 c? c8 ds4 r }
  \relative c' { r8\mf b8 b cs ds4 r r8 b8 c? c8 ds4 r }
  \relative c' { r8\mf b d c r8 b8 e d8 r8 cs fs e r8 e cs8 ds8 }
  % Ténors
  \new Voice = "tenorsCouplets" {
    r2 r r r
    \mark "B (32'')"
    \relative c' { g4\f b8 cs ds4 r r8 b8 c? c8 ds4 r }
    \mark "40''"
    \relative c' { g4\f b8 cs ds4 r r8 b8 c? c8 ds4 r }
  }
  \mark "48''"
  \relative c' { r8\mf b d c r8 b8 e d8 r8 cs fs e r8 e cs8 ds8 }  \bar "||"
  \pageBreak
  % Altos
    r2 r r r
    \relative c' { r8\mf e8 fs g ds4 r4 r8 b c?8 e ds4 r }
    \relative c' { r8\mf e8 fs g ds4 r4 r8 b c?8 e ds4 r }
    \relative c' { r8\mf b d c r8 b8 e d8 r8 cs fs e r8 e cs8 ds8 }
  % Basses
  \once \omit Staff.TimeSignature
  r2 r r r
  \relative c' { b4\mf b8 cs ds4 r r8 b8 c? c8 ds4 r }
  \relative c' { b4\mf b8 cs ds4 r r8 b8 c? c8 ds4 r }
  \relative c' { e4\mf c b a fs4  r }
  \relative c' { r8\mf b d c r8 b8 e d8 r8 cs fs e ds2 }
  \relative f' { \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
                                 r8\startTextSpan e r b8 r8 c r ds8 r8 e r b8 r8 c r ds8\stopTextSpan }
  \relative f' { e2\fermata e2\fermata <d fs>\fermata <e gs>2\fermata }
}

bass = {
  \global
  % Sopranes
  \relative f { e4\mp e8 e b4 r8 b8 e4 a, b4 r4 }
  \relative f { e4\mf e8 e b4 r8 b8 e4 a, b4 r4 }
  \relative f { e4\mf e8 e b4 r8 b8 e4 a, b4 r4 }
  \relative f, { e4\mf fs8 fs g4 r8 g8 a4 a4 b4 r }
  % Ténors
  \relative f { e4\mp e8 e b4 r8 b8 e4 a, b4 r4 }
  \relative f { e4\mp e8 e b4 r8 b8 e4 a, b4 r4 }
  \relative f { e4\mp e8 e b4 r8 b8 e4 a, b4 r4 }
  \relative f, { e4\mf fs8 fs g4 r8 g8 a4 a4 b4 r }
  % Altos
  \relative f, { e4\mp e8 e b'4 r8 b8 e4 a, b4 r4 }
  \relative f, { e4\mp e8 e b'4 r8 b8 e4 a, b4 r4 }
  \relative f, { e4\mp e8 e b'4 r8 b8 e4 a, b4 r4 }
  \relative f, { e4\mf fs8 fs g4 r8 g8 a4 a4 b4 r }
  \once \omit Staff.TimeSignature
  \splitStaffDownBarLine
  % Basses
  <<
    {
      \set Staff.instrumentName = #"Baryton"
      \set Staff.shortInstrumentName = #"Bar."
      r2 r r r
      \relative f { r8\f b a g fs4 r8 g e (fs) g (a) b4 r }
  \mark "1'28"
      \relative f { r8\f b a g fs4 r4 e8 (fs) g a b4 r }
  \mark "1'36"
      \relative f { r8\f b a g g b d cs b4 r }
      r2 r r r \bar "||"
    }
    \new Staff \with { instrumentName = "Basses" shortInstrumentName = "B." }
    <<
      \new Voice = "basses2" { \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
        \clef bass \global \voiceTwo
        \once \omit Staff.TimeSignature
        \relative f, { e4\mp e8 e b'4 r8 b8 e4 a, b r }
        \mark "D (1'20)"
        \relative f, { e4\mp e8 e b'4 r8 b8 e4 a, b r }
        \relative f, { e4\mp e8 e b'4 r8 b8 e4 a, b r }
        \relative f, { e4 fs g a4 b4 r }
        \mark "1'42"
        \relative f, { e4 fs8 fs g4 r8 g8 a4 a4 b2 }
        \splitStaffUpBarLine
      }
      \new Lyrics = "basses2" \lyricsto "basses2" {
        \repeat unfold 3 { Pas -- sent les jours, mais pas le temps. }
        d'é -- ter -- nels ins -- tans&nbsp;!
        Pas -- sent les jours, mais pas le temps.
      }
    >>
  >> \oneVoice
  \set Score.repeatCommands =
    #(list(list 'volta "1.-3.") 'start-repeat)
      \relative f { \override TextSpanner.bound-details.left.text = \markup { \upright "acc." }
                                e8\startTextSpan r g r fs r b, r e8 r g r fs r b, r\stopTextSpan }
      \bar ":|."
  \break
  \relative f { c2\fermata <a a'>2\fermata <fs fs'>\fermata <e e'>2\fermata }
  \set Score.repeatCommands = #'((volta #f))
  \bar ".|"
}

bassesLyrics = \lyricmode {
  Pas -- sent les jours, mais pas le temps.
  Pas -- sent les jours, mais pas le temps.
  Pas -- sent les jours, mais pas le temps.
  Pas -- sent les jours, mais pas le temps.

  Pas -- sent les jours, mais pas le temps.
  Pas -- sent les jours, mais pas le temps.
  Pas -- sent les jours, mais pas le temps.
  Pas -- sent les jours, mais pas le temps.

  Pas -- sent les jours, mais pas le temps.
  Pas -- sent les jours, mais pas le temps.
  Pas -- sent les jours, mais pas le temps.
  Pas -- sent les jours, mais pas le temps.

  Un jour vien -- dra où, d'é -- phé -- mères,
  ces pe -- tits riens, bel -- les chi -- mères,
  De -- vien -- dront d'é -- ter -- nels ins -- tants;
  Pas -- sent les jours, mais pas le temps.
  Pas&nbsp;! Pas le temps&nbsp;!
}

\paper {
  #(include-special-characters)
  #(set-paper-size "a4")
  top-margin = 2\cm
  bottom-margin = 2\cm
  left-margin = 1.5\cm
  right-margin = 1\cm
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Arial"
     #:sans "Cantarell thin"
    ))
  min-systems-per-page = 2
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
  }%}
}
%\pageBreak
\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        \consists "Ambitus_engraver"
        midiInstrument = "acoustic grand"
        instrumentName = "Soprano"
        shortInstrumentName = "S."
      } \new Voice = "soprano" { \soprano }
        \new Lyrics ="sopranosCouplets" \lyricsto "sopranoCouplets" {
          \set stanza = "1. "
          Tom -- be la pluie, souf -- fle le vent,
          Nu -- a -- ges gris, nu -- a -- ges blancs&nbsp;;
        }
        \context Lyrics = "sopranosCoupletsDeux" \lyricsto "sopranoCouplets" {
          \set stanza = "4. "
          Pom -- mes au four, pou -- les au pot,
          Le thé au lait, de bons gâ -- teaux&nbsp;;
        }
        \context Lyrics = "sopranosCoupletsTrois" \lyricsto "sopranoCouplets" {
          \set stanza = "7. "
          Se pro -- me -- ner dans la fo -- rêt,
          Où les oi -- seaux font ca -- ba -- ret&nbsp;;
        }
        \context Lyrics = "sopranosCoupletsQuatre" \lyricsto "sopranoCouplets" {
          \set stanza = "10. "
          Le feu dan -- sant, un soir d'hi -- ver,
          Une cou -- ver -- ture, un livre ou -- vert&nbsp;;
        }
        \context Lyrics = "sopranosCoupletsCinq" \lyricsto "sopranoCouplets" {
          \set stanza = "13. "
          So -- leil nou -- veau à l'o -- ri -- ent
          Bel ho -- ri -- zon, les cieux en sang&nbsp;;
        }
        \new Lyrics = "sopranos" \lyricsto "soprano" {
          \repeat unfold 5 {
            Pas -- sent les jours, mais pas le temps.
          }
          d'é -- ter -- nels ins -- tants&nbsp;!
          Pas -- sent les jours, mais pas le temps.
          Pas -- sent les jours, mais pas le temps.
          Pas&nbsp;! Pas le temps&nbsp;!
        }
      \new Staff \with {
        \consists "Ambitus_engraver"
        midiInstrument = "acoustic grand"
        instrumentName = "Alto"
        shortInstrumentName = "A."
      } \new Voice = "alto" \alto
        \new Lyrics = "altos" \lyricsto "alto" {
          % A & B
          \repeat unfold 6 {
            Pas -- sent les jours, mais pas le temps.
          }
        % C => Couplets ci-dessous
        % on ne garde que le refrain ici
          Pas -- sent les jours, mais pas le temps.
          % D
          Pas -- sent les jours, mais pas le temps.
          Pas -- sent les jours, mais pas le temps.
          d'é -- ter -- nels ins -- tants&nbsp;!
          Pas -- sent les jours, mais pas le temps.
          Pas -- sent les jours, mais pas le temps.
          Pas&nbsp;! Pas le temps&nbsp;!
        }
        \context Lyrics = "altos" \lyricsto "altosCouplets" {
          \set stanza = "3. "
          La vieille hor -- loge dans le sa -- lon,
          Son -- ne les heures, et les sai -- sons;
        }
        \new Lyrics = "altosCouplets" \lyricsto "altosCouplets" {
          \set stanza = "6. "
          Un bol de lait, une tar -- tine,
          Un cho -- co -- lat à la cui -- si -- ne;
        }
        \context Lyrics = "altosCoupletsDeux" \lyricsto "altosCouplets" {
          \set stanza = "9. "
          Le feu de bois qui se con -- sume,
          Vieil -- le mai -- son, sen -- teurs d'a -- grumes;
        }
        \context Lyrics = "altosCoupletsTrois" \lyricsto "altosCouplets" {
          \set stanza = "12. "
          La nuit se perd, le phare é -- teint
          Seul sur la mer, une île au loin;
        }
      \new Staff \with {
        \consists "Ambitus_engraver"
        midiInstrument = "acoustic grand"
        instrumentName = "Ténor"
        shortInstrumentName = "T."
      } {
        \clef "treble_8"
        \new Voice = "tenor" \tenor
      }
      \new Lyrics = "tenor" \lyricsto "tenor" {
        % A
        Pas -- sent les jours, mais pas le temps.
        Pas -- sent les jours, mais pas le temps.
        Pas -- sent les, les jours mais, mais pas le, pas le temps.
        % B => Couplets ci-dessous
        % on ne garde que le refrain ici
        Pas -- sent les, les jours mais, mais pas le, pas le temps.
        %C
        Pas -- sent les jours, mais pas le temps.
        Pas -- sent les jours, mais pas le temps.
        Pas -- sent les, les jours mais, mais pas le, pas le temps.
        %D
        Pas -- sent les jours, mais pas le temps.
        Pas -- sent les jours, mais pas le temps.
        d'é -- ter -- nels -- ins -- tants&nbsp;!
        Pas -- sent les, les jours mais, mais pas le temps.
        Pas -- sent les jours mais pas le temps.
        Pas&nbsp;! Pas le temps&nbsp;!
      }
      \context Lyrics = "tenor" \lyricsto "tenorsCouplets" {
        \set stanza = "2. "
        La ma -- rée monte, et puis des -- cend,
        Vol d'al -- ba -- tros, dans le cou -- chant;
      }
      \new Lyrics = "tenorsCoupletsDeux" \lyricsto "tenorsCouplets" {
        \set stanza = "5. "
        Du pain, sen -- tir la bonne o -- deur
        Chaud et do -- ré, la mie à cœur;
      }
      \new Lyrics = "tenorsCoupletsTrois" \lyricsto "tenorsCouplets" {
        \set stanza = "8. "
        L'o -- deur des bois, a -- près la pluie,
        Les es -- car -- gots dans leur co -- quille;
      }
      \new Lyrics = "tenorsCoupletsQuatre" \lyricsto "tenorsCouplets" {
        \set stanza = "11. "
        Ma -- tins en mer sur un ba -- teau,
        Un cor -- mo -- ran plon -- ge dans l'eau;
      }
      \new Lyrics = "tenorsCoupletsCinq" \lyricsto "tenorsCouplets" {
        \set stanza = "14. "
        Au loin, la nuit, une lu -- miè -- re,
        Gui -- de nos pas, forme un a -- mer;
      }
      \new Staff \with {
        \consists "Ambitus_engraver"
        midiInstrument = "acoustic grand"
        instrumentName = "Basse"
        shortInstrumentName = "B."
     } {
        \clef bass
        \new Voice = "bass" \bass
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bass" \bassesLyrics
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}