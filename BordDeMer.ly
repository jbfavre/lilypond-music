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
  title = "Un zèbre en bord de mer"
  composer = "Jean Baptiste Favre"
  opus = "op. 1"
  dedication = \markup { \italic "Clichy-la-Garenne, février 2020" }
  subtitle = "Fantaisie pour Piano"
  tagline = ""
  date = "Clichy-la-Garenne, février 2020"
}

\paper {
  #(include-special-characters)
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Latin Modern Roman"
     #:sans "Latin Modern Sans"
     #:factor (/ staff-height pt 20)
    ))
  systems-per-page = 5
  top-margin = 1\cm
  bottom-margin = 1\cm
  bookTitleMarkup = \markup \column {
    \fill-line { \fontsize #5 \italic \fromproperty #'header:composer }
    \when-property #'header:date \fill-line { \combine \vspace #1.2 \fontsize #1 \typewriter \fromproperty #'header:date }
    \combine \null \vspace #14
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #4
    \fill-line { \fontsize #10 \fromproperty #'header:title }
    \combine \null \vspace #1
    \fill-line { \when-property #'header:subtitle \fontsize #3 \fromproperty #'header:subtitle }
    \combine \null \vspace #1
    \fill-line { \postscript #"-10 0 moveto 20 0 rlineto stroke" }
    \when-property #'header:opus \fill-line { \combine \vspace #1.5 \fontsize #5 \typewriter \bold \fromproperty #'header:opus }
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #1
    \fill-line { \epsfile #X #50 #"BordDeMer.eps" }
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
        \center-column { \fontsize #6 \sans \fromproperty #'header:title }
        \line { "" }
      }
      \fill-line {
        \line { "" }
        \center-column { "" }
        \line {
          \right-column {
            \fontsize #1 \sans \fromproperty #'header:composer
            \fontsize #0.8 \typewriter \fromproperty #'header:opus
          }
        }
      }
      \vspace #1
    }
  }
}
\pageBreak
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
    \once \set Score.tempoHideNote = ##t \tempo "Calme et majestueux" 4. = 40
    s4.\tag #'midi \p  s4.
    %\mark "A"
    % miti time: 0.00'
    \mark \default
    \repeat unfold 2 {
      s4.\p s4.*3 \break
      s4.\mp\< s4. s4.\!\tag #'midi \f\> s4\!\tag #'midi \mp s8\tag #'midi \mf
      \once \set Score.tempoHideNote = ##t \tempo "Élargir, avec plus d'emphase" 4. = 39
      s4.\mf\< s4.\!\tag #'midi \f\> \break
      s4.\!\tag #'midi \mf\< s4.\!\f\> s4.\!\tag #'midi \mp\<
    }
    \alternative {
      { s4.\!\mf\> s4.\!\p s4. \break }
      { s4.\!\mf\>
        \once \set Score.tempoHideNote = ##t \tempo "Céder" 4. = 35
        << s4.\!\p\> { s8 s4 } >>
        \tag #'midi \tempo 4.=33
        s4.\!\pp \break
        \tag #'midi \tempo 4.=10
        s4
        \tag #'midi \tempo 4.=65
        s8\tag #'midi \p
      }
    }
  %\mark "B"
  % midi time: 0.55'
  \bar "||"
  \mark \default
  \once \set Score.tempoHideNote = ##t \tempo "Léger, enjoué" 4.= 65
  s4.\mp\< s4.\!\tag #'midi \mf\tag #'midi \> s4.\!\tag #'midi \mp\> s4\!\tag #'midi \p s8\tag #'midi \p s4.\mp\tag #'midi \< \break
  s4.\!\f s4.\tag #'midi \< s4\!\ff s8\tag #'midi \mp s4.\mp\< s4.\!\tag #'midi \mf\tag #'midi \> s4.\!\tag #'midi \mp\> s4.\!\tag #'midi \p \break
  s4.\mp\tag #'midi \< s8\!\f s8 s8 s4\> s8 s4\!\mp s8\tag #'midi \mf
  \once \set Score.tempoHideNote = ##t \tempo "Ritardando" 4. = 63
  s4.\f s4. \break
  s4. s4.
  \once \set Score.tempoHideNote = ##t \tempo "Léger, enjoué" 4. = 65
  s4\tag #'midi \> s8\!\tag #'midi \mp s4.\mp\< s4.\!\tag #'midi \mf\< s4.\f\tag #'midi \< \break
  s4. s4.\!\ff\> s8 s8\!\tag #'midi \f\tag #'midi \> s8
  \once \set Score.tempoHideNote = ##t \tempo "molto céder" 4. = 55
  s4.\!\mf\>
  \tag #'midi \tempo 4.= 30
  s4\!\tag #'midi \pp
  \once \set Score.tempoHideNote = ##t \tempo "Pressé" 4. = 80
  s8\tag #'midi \mf s4.\f \break
  s4. s4.\< s8\!\ff
  \tag #'midi \tempo 4. = 5
  s8
  \tag #'midi \tempo 4. = 35
  s8\tag #'midi \mf
  %\mark "C"
  % midi time: 1.30'
  \bar "||"
  \mark \default
  \once \set Score.tempoHideNote = ##t \tempo "Méditatif" 4. = 35
  s8\mf\< s8 s8\!\tag #'midi \f\tag #'midi \> s4.\!\tag #'midi \mf\> \break
  s4.\!\mp\> s4.\!\tag #'midi \p s4.\p\tag #'midi \< s4. s4.\!\f\tag #'midi \> s4\!\mf  s8\tag #'midi \>\break
  s4.\!\tag #'midi \mp\< s4.\!\f s4.\> s4. s4.\!\mf\tag #'midi \>
  \once \set Score.tempoHideNote = ##t \tempo "Céder"
  s4. \break
  s4.\!\tag #'midi \mp\> s4\!\p s16 s16\tag #'midi \mp s4\mp\< s8\!\tag #'midi \f\tag #'midi \> s4.\!\tag #'midi \mf\> s4.\!\mp\> s4.\!\tag #'midi \p \break
  s4.\p\tag #'midi \< s4. s4.\!\f s4\mf s8 s4.\f s4\mf s8 \break
  s4.\f s4.\mf s4.\p\< s4.\<\mp s4.\!\<\mf s4.\!\f\< \break
  \once \set Score.tempoHideNote = ##t \tempo "Céder"
  s4.\!\ff
  \tag #'midi \tempo 4. = 25
  s8\tag #'midi \ff s8\tag #'midi \mf s8\!\tag #'midi \p
  %\mark "D"
  % midi time: 2.30'
  \bar "||"
  \mark \default
  \once \set Score.tempoHideNote = ##t \tempo "Serein et apaisé" 4. = 40
  s4.\!\mp s4.*3 \break
  s4.\mf\< s4. s4.\!\tag #'midi \f\> s4.\!\mf s4.\f s4.\mf \break
  s4.\f s4.\mf s4.\f\> s4.\!\mf\>
  \once \set Score.tempoHideNote = ##t \tempo "Céder" 4. = 39 s8\!\mp
  \tag #'midi \tempo 4. = 38 s8
  \tag #'midi \tempo 4. = 36 s8
  \tag #'midi \tempo 4. = 34 s8\>
  \tag #'midi \tempo 4. = 32 s8
  \tag #'midi \tempo 4. = 30 s8
  s4.\!\p
  \bar "|."
}

dynamicsDownStaff = {
  %\mark "A"
  \repeat unfold 34 { s8\sustainOn s8\tag #'midi \sustainOff s8 } s4.
  %\mark "B"
  \repeat unfold 5 { s8 s8 s8 } s4. s4.
  \repeat unfold 6 { s8 s8 s8 } s4.
  \repeat unfold 6 { s8 s8 s8 } s4.
  \repeat unfold 4 { s8 s8 s8 } s4.
  s8 s8 s8 s4. s8 s8 s8
  \repeat unfold 4 { s4. }
  %\repeat unfold 5 { s8\sustainOn s8\tag #'midi \sustainOff s8 } s4. s4.
  %\repeat unfold 6 { s8\sustainOn s8\tag #'midi \sustainOff s8 } s4.
  %\repeat unfold 6 { s8\sustainOn s8\tag #'midi \sustainOff s8 } s4.
  %\repeat unfold 4 { s8\sustainOn s8\tag #'midi \sustainOff s8 } s4.
  %s8\sustainOn s8\tag #'midi \sustainOff s8 s4. s8\sustainOn s8\tag #'midi \sustainOff s8
  %\repeat unfold 4 { s4. }
  %\mark "C"
  \repeat unfold 15 { s8\sustainOn s8\tag #'midi \sustainOff s8 } s4.
  \repeat unfold 17 { s8\sustainOn s8\tag #'midi \sustainOff s8 } s4.
  %\mark "D"
  \repeat unfold 17 { s8\sustainOn s8\tag #'midi \sustainOff s8 }
}

sopraneVoice = {
  %\mark "A"
  \relative c' {
    \key f \minor
    \oneVoice r4. r4. \voiceOne
    \repeat unfold 2 {
      f8( g af c bf af) g( af bf af g e)
      f8( g af af c df f [ef8.] df16 \acciaccatura ef16 df4) c8 df8( b c gf'8. f16 ef8)
      c( a bf f'8. ef16 df8) bf8( g af
      }
    \alternative {
      { ef'8. df16 c8) c8( [b8.] c16 <c e,>4) r8 }
      { c8 af f) bf( g e g4.)
        f4\fermata c8 }
      }
  %\mark "B"
    \key f \major
    f8. g16 a c bf8_> g_. bf_. a_> f_. a_. g4 c,8 d4 e8 f-> a-. c-. a b4 c4
    c,8 f8. g16 a c bf8_> g_. bf_. a_> f_. a_. g4 c,8 d4 e8 f-> a-. g-. f4 e8 f4
    f8 bf8._> a16 g8 a_> f_. a_. c8._> bf16 a8 g4._> \oneVoice r4 \voiceOne c,8 f8. g16 a c bf8_> g_. bf_. c_> a_. cs_. d4\fermata
    f,8 f'8._>( e16 d8_. c a f8) f'8._>( ef16 df8 <c, e g bf c>4\arpeggio)\fermata f8 f'8. e16 d8 c_. a_. c_.
    < f, bf d>_. <g bf e>_. g'_. <a, c f>8_. \oneVoice r8\fermata \voiceOne a8
  %\mark "C"
    \key d \minor
    \repeat unfold 2 {
      d,( f bf a4 e8 f4. d4.)
      e8( f g bf e d) c8( g c bf gs a8)
      }
    \alternative {
      { a8( b cs <d f> e d) c( g c bf gs a) a( e a g e f) f( e d e4) \oneVoice r16 \voiceOne a }
      { bf8( f bf a8. fs16 g8) a( e a g8. e16 f8) g( a g g a g) a( bf a bf df bf)
        df( bf g <bf c>4.)\fermata }
      }
  %/mark "Coda"
    \key f \minor
    f8( g af c bf af) g( af bf af g e) f8( g af af c df f [ef8.] df16 \acciaccatura ef16 df4) c8
    df8( af df c a bf) c( g c bf g af) bf( c bf bf g  af) bf( af g g4.) f4.\fermata
  }
}

altoVoice = { \voiceTwo
  \relative f' {
    %\mark "A"
    s4.*33 <c e>4. c4.
    %\mark "B"
    s4.*4
    g4 g8 <a c>4 f'8 <d f>8 <d g>4 <e g>4 s8
    s4.*4
    g,4 g8 c8 <d f> <bf d> c4 s8 <a c>4 s8
    s4.*17
    %\mark "C"
    \repeat unfold 2 {
      a4. e'4. d4. bf4.bf4. e4. <g bf> <c, f>4.
      }
    \alternative {
      { <cs e>4. <g' bf> e <c f> e4. d4. d <a cs>4 s8 }
      { <d f>4. e e d d d d f <df g bf>4. <e g>4. }
      }
  %/mark "Coda"
    s4.*8
    af4. g g f f <c f> <e g> <c e> <c>
  }
}

tenorVoice = {
  \relative f {
    %\mark "A"
    r8 <f af c> <af c f> r8 <f af c> <af c f>
    \repeat unfold 2 {
      r8 <f af c> <af c f> r8 <f af df> <af df f> r8 <g bf ef> <bf ef g> r8 <g bf c> <g bf c>
      r8 <f af df> <af df f> r8 <f bf df> <bf df f> r8 <g bf ef> <bf ef g> r8 <ef, af c> <af c ef>
      r8 <e g c> <g bf c e> r8 <a c ef> <a c f> r8 <f bf df> <bf df f> r8 <g bf ef> <bf ef g> r8 <ef, af c> <af c ef>
      }
    \alternative {
      { r8 <f af df> <af df f> r8 <b d f> <g d' f> <g c>16 (df') c-. bf-. af-. g-. }
      { r8 <f af c> <af c f> <g c>4. bf8 g8 bf8 a4. }
      }
    %\mark "B"
    r8 <a c>8 <a c> r8 <g bf> <g bf> r8 <a c>8 <a c> r8 <bf c>4 r4. r4. r4. r8 bf4~ bf8 <a c>8 <a c>
    r8 <g bf> <g bf> r8 <a c>8 <a c> r8 <bf c>4 r4. r4. r8 <g bf>4 r4. r8 <g d'>4 r8 <f c'>4 r8 <g bf>4 c4.~ c4 s8 r8 <a c>8 <a c>
    r8 <bf d> <bf d> r8 <c e> <a e'> <f bf>4. r8 <d' f> <d f> s4. r8 <df f> <df f> s4. r8 <d f> <d f> r8 <c f> <c f> r4. r4 s8
    %\mark "C"
    r8 <f, d'>4
    r8 <e a>4 r8 <f a>4 r8 f4 r8 e4 r8 g4 r8 c4 r8 a4
    r8 <e a>4 r8 g4 r8 <g c>4 r8 a4 r8 <e a>4 r8 a4 r8 <gs b>4
    r4. r8 <f d'>4 r8 <e a>4 r8 <f a>4 r8 f4 r8 e4 r8 g4 r8 c4 r8 a4 r8 bf4~ bf8 bf4
    r8 a4~ a8 a4 r8 g4~ g8 g4 r8 f4 r8 bf4 r8 g4
    r4.
    %/mark "D"
    r8 <f af c>[ <af c f>] r8 <f af df> <af df f> r8 <g bf ef> <bf ef g> r8 <g bf c> <g bf c>
    r8 <f af df> <af df f> r8 <f bf df> <bf df f> r8 <g bf ef> <bf ef g> r8 <ef, af c> <af c ef>
    r8 df4~ df8 df4 r8 <bf c>4~ <bf c>8 <af c>4 r8 bf4 r8 af4 r8 f4 bf8 g bf a4.
  }
}

basseVoice = {
  %\mark "A"
  \relative f, {
    f4._> f_>
    \repeat unfold 2 {
      f4._> df_> ef_> c_> df_> bf'_> ef,_> af_> c_> f,_> bf_> ef,_> af_>
      }
    \alternative {
      { df,_> g_> c4_> r8 }
      { c4._> c_> f,_>~ f\fermata }
      }
  }
  %\mark "B"
  \relative f, {
    \key f \major
    f'4._> d_> f_> e4._> b4 bf8 a_> f_. a_. d_. g_. g,_. c4._> f4._> d_> f_> e4_> r8 b4 bf8 a_> bf_. g_. c4._> f,4._> c'4._> c4._> c4._>
    c4._>~ c4 \oneVoice r8 \voiceFour f4._> g_> a_> bf,4\fermata r8 bf'4._> f8( a c) bf4._> <c, e g bf c>4\arpeggio\fermata
    \oneVoice r8 \voiceFour bf'4._> a4._> bf8^. c^. c,^. f8^. f,^.\fermata \oneVoice r8 \voiceFour
  }
  %\mark "C"
  \relative f, {
    \key d \minor
    \repeat unfold 2 { d'4._> cs_> c!_> bf4_> a8 g4._> c_> e_> f_> }
    \alternative {
      { a,_> bf_> c_> f_> cs_> d_> e_> a,16^. e'^. a^. cs^. e^. \oneVoice r16 \voiceFour }
      { d,4._> e_> cs_> d_> b_> bf!_> a_> df_> bf_> c8\fermata g' c}
    }
  }
  %/mark "D"
  \relative f, {
    \key f \minor
    f4._> df_> ef_> c_> df_> bf'_> ef,_> af_> f'4._> g_> e_> f_> df_> f_> c8 d e <f f,>4. (<f f,>4.)\fermata
  }
}

basseChiffree = {
  \figuremode {
    %\mark "A"
    <5>4. <5>4.
    \repeat unfold 2 {
      <5>4. <5> <6> <7 _\+> <5> <5> <6> <5> <5> <5> <5> <6> <5>
      }
    \alternative {
      { <5>4. <5> <5> }
      { <6 4>4. <7 _\+> <5> <5> }
      }
    %\mark "B"
    <5> <5> <5> <6> <6>4 <6 4>8 <6>4. <5>8 <5>4 <5>4. <5> <5> <5> <6> <6>4 <6>8 <6> <5> <5> <5>4. <5> <_> <_> <_> <5> <_> <5> <5> <6> <5> <5> <5> <5> <5> <5> <6> <5>8 <5> <_>  <5>4.
    %\mark "C"
    \repeat unfold 2 {
      <5> <6> <_> <6> <6> <5> <6> <5>
      }
    \alternative {
      { <5> <6> <5> <5> <6> <5> <5 _+> <5 _+> }
      { <6> <5> <6> <5> <6> <6> <6 4> <6> <6 _-> <5> }
      }
    <5>4. <5> <6> <7 _\+> <5> <5> <6> <5> <6> <5> <6> <5> <6> <5> <5> <5> <5>
  }
}
basseDegres = {
  \figuremode {
    %\mark "A"
    <I>4. <I>
    \repeat unfold 2 { <I> <VI> <V> <V> <VI> <IV> <V> <III> <V> <I> <IV> <V> <III> }
    \alternative {
      { <VI> <II> <V> }
      { <I> <V> <I> <I> }
      }
    %\mark "B"
    \repeat unfold 33 { <_> }
    %\mark "C"
    \repeat unfold 2 {
      <I> <V> <I> <VI> <II> <VII> <VII> <III>
      }
    \alternative {
      { <V> <IV> <VII> <III> <V> <I> <II> <V> }
      { <VI> <II> <V> <I> <IV> <IV> <I> <VI> <IV> <VII> }
      }
    <I> <VI> <V> <V> <VI> <IV> <V> <III>
    <VI> <II> <V> <I> <IV> <I> <V> <I> <I>
  }
}
pianoMusic = {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "up"
    <<
      \tag #'midi \set Staff.midiInstrument = \midiInstrumentName
      \clef treble \time 3/8
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
      \clef bass \key f \minor
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