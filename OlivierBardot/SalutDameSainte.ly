\version "2.18.2"
\language "english"

% variables de tempo. Utilisées à la voix de soprane
tempoOne = \markup{\typewriter \bold "Très modéré mais avec ferveur"}
tempoTwo = \markup{\typewriter \bold "Plus ardent, avec beaucoup de densité"}
tempoThree = \markup{\typewriter \bold "Très apaisé, confiant, sempre legato"}
tempoFour = \markup{\typewriter \bold "Éclatant"}
tempoFive = \markup{\typewriter \bold "Sensiblement plus lent"}
tempoSix = \markup { \typewriter \bold "Confiant et apaisé"}
tempoSeven = { \override TextSpanner.bound-details.left.text = \markup { \italic \large { \roman { céder un peu } } } }
tempoEight = { \override TextSpanner.bound-details.left.text = \markup { \italic \large { \roman { céder encore } } } }

% variables d'expression. Utilisées à la voix de soprane
dynamicOne = \markup{\typewriter \italic"Avec une grande tendresse"}
dynamicTwo = \markup { \typewriter \italic "Bien en dehors"}

global = {
    \time 3/4
    \key f \major
    \set Timing.beamExceptions = #'()
    \set Timing.beatStructure = #'(2 2 2)
    \set Score.markFormatter = #format-mark-box-numbers
    \phrasingSlurUp \slurDown \dynamicUp
  }

sopranoMusic = \relative c'' {
    << d4\(\p { s16\tempo \tempoOne 4 = 63 s s s}>> a4 f8 g a4 a2 d,4 e8 f a g \break
    e4 e2\) f8\<\( (g) a d bf g << f4\!\mp  { s8\> s } >> e8 f g4\)\! \break
    << af8\mp\( {s16 \tempo \tempoTwo s } >> g8 af2 f4 g8 af c c f, ef f2\) \break
    ef8\cresc f g bf ef df c (bf) af bf c4 f,8 c' bf f g4
    (g8) af g f df' bf g4 af8 bf c4 f8\f af, bf af g f \break
    c'4\> c4 (c8)\! r8 \mark \default << a!4\mp\( { s16 \tempo \tempoThree s s s}>>
        a4 a c, d! e! d2. \break
    d2 r4\) g4\( g g bf, c d cs\cresc (d) e \break
    f4. f8[ g a] b4 c d d8\!\< (c g e) c d e2 r4\!\) \break \bar "||" \key a \major
    \mark \default << cs'4\f\( { s16 \tempo \tempoFour s s s} >>
        e,4. e8 fs2 fs8 (cs'8) cs4 e,4. gs8\< gs4 fs fs\ff\)\( \break
    ds'4 gs,4. as8 bs2 cs8\)\( (ds) ds4 gs,4. as8 \break
    cs[ (bs gs)] e![ fs gs]\> ds4 bs4. ds8\!\mf e2
        << ds4\(\)\mp { s16 s s^\dynamicOne s } >>
        e2 e4 \break
    a4 e d! e2. ~ e4\) r4 e4\( e2 e4 \break
    c' e, ef gf2. \mark \default << f2\) { s8^\tempoSix s s s } >> gf4\!\( \bar "||" \key af \major f4 bf c \break
    df8 ef df4\) f4\( (f8) ef df4. bf8\) g4\mp\( f8 (a) c (gs) \break
    b2\) fs8 (a) c2 << e,4\mf\( { s16 s s^\dynamicTwo s } >>
        c'!8 d b b a g \break
    a8\< b c e fs d d2.\)\!\mf\> r4\! r4 bf4\( \break
    d4\dim d,4 e \bar "||" \key f \major e4 c a'\)\( af8 (bf) g f g4\! \break
    g8\p a! ef (d) ef ef ef[ ef]\)\( f\<[ (g) a f] c (d) ef f g (a) \break
    g4\!\mf\> f d \tempoSeven
        f2\startTextSpan
        bf4 f2 e!4\!\)R2.\stopTextSpan \fermataMarkup \mark \default
        << d'4\(\mp { s16 \tempo \tempoFive  4 = 54 s s s}>>
        a4 f8 g \break
    a4 a a d,8 e! f f a g ef4 ef2 d8\)\( e! fs a c ef, \break
    d4 bf'\)\( e,!8 e << { \voiceOne d'2
                      \tempoEight
                      d4\startTextSpan d d e, fs2. ~ fs\)\stopTextSpan \fermata }
                    \new Voice { \voiceTwo e2 e4 e e d d2. ~ d }
                 >> \oneVoice
  }
altoMusic = \relative c' {

    f4\(\p e d8 e e4 f8 g f e f4 d8\) c\( d4
    (d8) b cs4 cs\) d\(\< f d << c!\!\mp  { s8\> s } >>  c8 d e4\!\)
    f2\mp c4 c4 c8 (f) g (f) ef (c) df4 f8 af
    af4 g8\cresc f ef4 (ef8) df df c ef ef ef f df4 f8 e
    af8 f f af g f e!4. (g8)[ e df'] c\f f, f4 df
    f8\> d! e!4 (e8)\! r8 f4\mp g f e! d! c c (bf) c
    bf c d bf a bf d (c) bf \breathe bf8\cresc bf a4. e'8
    e4 d c8 (f) f2 (g4) g (e4.\!\<) c8 d2\( r4\!\) \bar "||"
    \key a \major e4\f\( cs cs cs8 cs cs4 cs8\)\( (fs) e4 cs << cs {s8 s\<} >> cs4 cs ds8\ff\)\( (a'8)
    gs4 ds4\)\( ds e! fs (e) ds4. ds8[\)\( ds e] e4 cs << e  { s8 s\>} >> bs4 as << bs { s8 s\!\mf} >> b!2
        << b4\)\(\mp { s16 s s^\dynamicOne s } >>
    d!4 c c c2 c4\) c2. (c2) c4\( c (d) e e d c\)\( a\> b cs!\!\mp ef2.\) \bar "||"
    \key af \major df4\( c df8 (af') af4 g?8[ af bf c] bf4 af g8 f ef d ef4\)
    << b\mf\( { s16 s^\dynamicTwo s s} >>
    g'8 a fs fs e d e fs e a c d, e2\>
    c8\!\mp\)\( (d) e4\< fs8 (g) c4
    << { \voiceOne c4\!\mf bf a a8 (fs) bf4 a\) bf4.\dim bf8 g4 }
       \new Voice { \voiceTwo a4 a f e d d8 (g) d8 (c) d4 g4 }
    >> \oneVoice
    \bar "||" \key f \major g8 (a) e (d) e4 ef2 bf8 (ef)\!
    ef4\p c8 bf c4
    \phrasingSlurUp \dynamicUp
    f8\(\< (g) a f c (d) ef f g (a) c f,
    ef4\!\mf\> d\)\( bf8 c \tempoSeven
    cs2.\startTextSpan cs2.\!\) R2.\stopTextSpan \fermataMarkup
    a4\(\mp a c8 c fs4 c\)\( fs bf,?8 bf bf4 df
    c2\)\( c4 c ef fs ~ fs8 g d4\)\( d8 d
    bf'8 (a g fs)
        \tempoEight
        e4\startTextSpan fs g cs, d2. ~ d\!\)\stopTextSpan \fermata
  }
tenorMusic =  \relative c' {
    a4\p a2 a4\( e' d8 c c (a) g (a)\) bf4\(
    a2. a2\< a8 bf << g\!\mp  { s16\> s } >>  g8 c4 c\)\!
    c8\mp\( bf c2 af8 (bf) bf c af af af g af4\) df8\cresc c
    bf4. af8 bf4( bf8) (ef,) f (g) g (af) af4 f8 c' bf g
    c4. df8[ bf g] g' e! df4 g,8 g c4\f df8 c bf4
    g8\> g c4 (c8)\! r8 c2.\mp\( (f,) f4\) f f
    f f f f (bf) d, g (a) g g2\cresc a4
    a8[ a] e'[ e d c] a2 b4 (b8) c c4\!\< g8 g gs2\( r4\!\)
    \bar "||" \key a \major a4\f\( a2 a4 a2 a8\)\( (e'8) e4 e8 a,\< a4 b cs\ff\)\(
    bs2 bs4 as2 as8\)\( (cs) bs4. bs8[ as gs] as2 (as8) as\> gs4 gs\) << gs4\( { s8 s\!\mf} >> f2\)
    << gs?4\mp\( { s16 s s^\dynamicOne s } >>
    g4 a b e2 b4\<\)\( b\> a g g2\! a4 as2 as4\)\( as as as ds,2.\> a'?2.\!\)\(
    \bar "||" \key af \major af2 bf4 f'2 df8 ef df c bf2 af4 a4 d8\mp\)\( (f)
    << { \voiceOne e2 c4\)\( d b a! a2 g8 g^\dynamicTwo\)\(}
       \new Voice { \voiceTwo c2 a4 a a g fs2 g8 g }
    >> \oneVoice
    c8\< d b b a4 bf!8\!\mf bf fs4 g8 bf d4\< e f! f\!\> e bf\)\!\dim\(
    \bar "||" \key f \major a2\) c4 c g8 (af) ef'8 (bf)\!
    a8\p (d) a g f\<\( (g) a f c (d) ef f g (a)\)\( c (d) ef d
    d4\!\mf\> a f \tempoSeven
    g\startTextSpan bf ef ef g,2\!\) R2.\stopTextSpan \fermataMarkup
    f'4\(\mp e! (d) ef2 (c4) a g4. bf8
    bf4 (a) g fs\)\( bf a bf g8 (a) bf\)\( c
    d (c bf a) << { \voiceOne
                    \tempoEight
                        g4\startTextSpan d' bf g }
                  \new Voice { \voiceTwo bf4 bf e, bf' }
               >> \oneVoice a2. ~ a\)\stopTextSpan \fermata
  }
bassMusic =  \relative c {
    d4\p d2 c4 c2 bf8[\( (c) bf] a[ g g]
    a4 a'\) g\( f8\< e d4 g,8 g  << c2.\)\!\mp { s4\> s s\! } >>
    f,2\mp\( f'4 ef2. df8\) ef df c bf bf
    ef4 ef\cresc g, af2 af4 df g, c
    f,4 df'8 (c) bf bf c4 c bf af\f\( g8 (af) bf df\)
    c4\> c4 (c8)\! r8 f2.\mp\( (a,!2.) bf4\) bf bf
    a a a g2 <f f'>4 <e! e'!>2 <e e'>4 a4\cresc\( (b) cs
    d d d\) g,\( (g' f) e\) (c)\!\< c bf?2\( r4\!\)
    \bar "||" \key a \major a4\f\( a a' ds,2 ds4\)\( a a <<a' {s8 s\<} >>  ds,4 ds a\ff
    gs2 gs4 gs'2 gs4\)\( gs, gs gs gs2 << gs4 { s8 s\>} >> gs4 gs << gs { s8 s\!\mf} >> g2
        << g4\mp\)\( { s16 s s^\dynamicOne s } >> c4 a g
    fs2 fs4\)\( << g2 {s8 s s\< s } >> g4 b\> a g fs2.\!\) fs'2\( fs,4 f2.\)
    << f'2\mf\( {s8 s^\dynamicTwo s s} >> f4
    \bar "||" \key af \major bf,4 df f
    c'4 (bf) af g f8 (ef) f (g) f2\> e4\!\mp\)\(
    a,2 g'4\)\( fs4. fs8[ e e] a,4 c e8 e b'4\< a8 a d, d g,2\!\mf g4\)\( g'4 g g c,\dim c c
    \bar "||" \key f \major f,2 f4 f'4\) f c\!
    f,4\p f'8\<\( (g) a f c (d) ef f a,4 ~ a2.\)
    a2\!\mf\> a4 \tempoSeven
    a2.\startTextSpan a\! R2.\stopTextSpan \fermataMarkup
    d4\mp d d <d d,>2 d4 d2 d4
    <d d,>2 d4 d2. ~ d << <d d,> {s2
        \tempoEight
        s4\startTextSpan}>> d2. << { \voiceOne d ~ d\stopTextSpan \fermata}
                       \new Voice = "Basses2" { \voiceTwo d d, }
                       \new Lyrics \lyricsto "Basses2" { _ ô }
                    >> \oneVoice
  }

sopranoLyrics = \lyricmode {
    Sa -- lut, Da -- me sain -- te, Rei -- ne, très sain -- te Mè -- re, Rei -- ne, très sain -- te Mè -- re de Dieu&nbsp;;
    Ô Ma -- rie, toi qui es Vier -- ge pour tou -- jours, toi l'é -- lue du très saint Pè -- re du Ciel,
    con -- sa -- crée par Lui a -- vec son très saint Fils bien ai -- mé, et l'Es -- prit qui nous pro -- tè -- ge&nbsp;;
    toi en qui fut et de -- meu -- re, toi en qui fut et de -- meu -- re tou -- te plé -- ni -- tu -- de de grâ -- ce~et
        tout bien&nbsp;;
    sa -- lut Pa -- lais, sa -- lut Ta -- ber -- na -- cle, sa -- lut ô Mai -- son, sa -- lut Vê -- te -- ment, sa -- lut,
        Ser -- van -- te, sa -- lut&nbsp;!
    Sa -- lut, ô Mè -- re de Dieu&nbsp;; sa -- lut, ô Mè -- re de Dieu&nbsp;! \markup { \italic "b.f." } __ _ _ _ _ _ _ _ _ _ _ _
    sain -- tes ver -- tus, sa -- lut, qui par la grâ -- ce~et l'il -- lu -- mi -- na -- tion du Saint Es -- prit, sa -- lut
        à vous tou -- tes qui
    ê -- tes ver -- sées dans les cœurs des fi -- dè -- les, ê -- tes ver -- sées dans les cœurs, dans les cœurs des
        fi -- dè -- les&nbsp;;
    sa -- lut à vous tou -- tes, qui d'in -- fi -- dè -- les que nous som -- mes, d'in -- fi -- dè -- les que nous som -- mes,
        nous ren -- dez fi -- dè -- les à Dieu
  }
altoLyrics = \lyricmode {
    Sa -- lut, Da -- me sain -- te, Rei -- ne très sain -- te, sa -- lut, ô Mè -- re, très sain -- te Mè -- re de Dieu;
    Ô Ma -- rie qui es Vier -- ge pour tou -- jours, toi l'é -- lue, l'é -- lue du Pè -- re, con -- sa -- crée, con -- sa -- crée
        par Lui
    a -- vec son Fils bien ai -- mé, a -- vec le Pa -- ra -- clet&nbsp;;
    toi en qui fut et de -- meu -- re, toi en qui fut et de -- meu -- re tou -- te plé -- ni -- tu -- de de grâ -- ce~et tout
        bien&nbsp;;
    sa -- lut Pa -- lais, sa -- lut, sa -- lut Ta -- ber -- na -- cle, sa -- lut ô Mai -- son, sa -- lut ô Vê -- te -- ment,
        ô Ser -- van -- te, sa -- lut&nbsp;!
    ô Mè -- re de Dieu, sa -- lut&nbsp;; sa -- lut, ô Mè -- re, ô Mè -- re de Dieu&nbsp;!
        \markup { \italic "b.f." } __ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    qui par la grâ -- ce~et l'il -- lu -- mi -- na -- tion du Saint Es -- prit&nbsp;; sa -- lut à vous tou -- tes, sa -- lut
        à vous tou -- tes
    qui ê -- tes ver -- sées&nbsp;; qui ê -- tes ver -- sées, ê -- tes ver -- sées dans les cœurs des fi -- dè -- les, des
        fi -- dè -- les&nbsp;;
    sa -- lut à vous tou -- tes, qui d'in -- fi -- dè -- les que nous som -- mes, nous ren -- dez, nous ren -- dez fi -- dè -- les
        à Dieu
  }
tenorLyrics = \lyricmode {
    Sa -- lut, sa -- lut, Da -- me sain -- te, sa -- lut, Rei -- ne, très sain -- te Mè -- re;
    Ô Ma -- rie, toi qui es Vier -- ge pour tou -- jours, toi l'é -- lue du Pè -- re du Ciel,
    con -- sa -- crée par Lui a -- vec son très saint Fils bien ai -- mé, et l'Es -- prit Pa -- ra -- clet&nbsp;;
    ô toi en qui fut et de -- meu -- re, tou -- te plé -- ni -- tu -- de, tou -- te plé -- ni -- tu -- de de grâ -- ce~et
        tout bien&nbsp;;
    sa -- lut Pa -- lais, sa -- lut Ta -- ber -- na -- cle, sa -- lut Mai -- son, sa -- lut, ô Vê -- te -- ment,
        Ser -- van -- te, sa -- lut&nbsp;!
    ô Mè -- re de Dieu, ô Mè -- re de Dieu&nbsp;; sa -- lut, ô Mè -- re de Dieu&nbsp;!
        \markup { \italic "b.f." } __ _ _ _ _ _ _ _ _ _ _
    sa -- lut, sa -- lut à vous tou -- tes, sain -- tes ver -- tus qui ê -- tes ver -- sées dans le cœur des fi -- dè -- les,
        sa -- lut,
    sa -- lut à vous tou -- tes qui ê -- tes ver -- sées dans les cœurs, ê -- tes ver -- sées dans le cœur des
        fi -- dè -- les&nbsp;;
    sa -- lut, sa -- lut à vous tou -- tes, qui d'in -- fi -- dè -- les, nous ren -- dez fi -- dè -- les à Dieu
  }
bassLyrics = \lyricmode {
    Sa -- lut, sa -- lut, Rei -- ne, très sain -- te Mè -- re, très sain -- te Mè -- re de Dieu;
    Ô Ma -- rie, Ma -- rie, Vier -- ge pour tou -- jours, toi l'é -- lue du Pè -- re, a -- vec son très saint Fils, et
        l'Es -- prit qui nous pro -- tè -- ge&nbsp;;
    ô toi en qui fut et de -- meu -- re tou -- te plé -- ni -- tu -- de de grâ -- ce~et tout bien&nbsp;;
    sa -- lut Pa -- lais, sa -- lut Ta -- ber -- na -- cle, sa -- lut Mai -- son, sa -- lut, Vê -- te -- ment, Ser -- van -- te,
        sa -- lut&nbsp;!
    ô Mè -- re de Dieu, sa -- lut, ô Mè -- re de Dieu,
    ô Ma -- rie, et sa -- lut à vous tou -- tes, sain -- tes ver -- tus, sa -- lut, sa -- lut sain -- tes ver -- tus
        qui par la grâ -- ce du Saint Es -- prit,
    sa -- lut à vous tou -- tes&nbsp;; vous tou -- tes qui par la grâ -- ce~ê -- tes ver -- sées dans les cœurs des
        fi -- dè -- les&nbsp;;
    sa -- lut à vous qui nous ren -- dez fi -- dè -- les à Dieu ô
  }

%{
  Bloc de titre
%}
#(define-markup-command (columns layout props args) (markup-list?)
   (let ((line-width (/ (chain-assoc-get 'line-width props
                         (ly:output-def-lookup layout 'line-width))
                        (max (length args) 1))))
     (interpret-markup layout props
       (make-line-markup (map (lambda (line)
                                (markup #:pad-to-box `(0 . ,line-width) '(0 . 0)
                                  #:override `(line-width . ,line-width)
                                  line))
                               args)))))
scoreTitleMarkupSetting = \markup \columns {
      \column {
        \line {
          \right-column {
            \fontsize #7 \sans \fromproperty #'header:title
            \fontsize #1 \typewriter \fromproperty #'header:subtitle
          }
        }
      }
      \column {
        \columns {
          \column{" "}
          \line {
            \fontsize #-1 \left-column {
              \line { \concat { \typewriter "Texte: " \sans \fromproperty #'header:poet \bold " " } }
              \line { \concat { \typewriter "Musique: " \sans \fromproperty #'header:composer \bold " " } }
              " "
              \typewriter \italic \fromproperty #'header:dedication
            }
          }
      }
    }
  }

#(set-default-paper-size "a4")
#(set-global-staff-size 16)
\paper {
  % special characters support http://lilypond.org/doc/v2.18/Documentation/notation/special-characters#ascii-aliases
  #(include-special-characters)
  print-all-headers = ##f
  left-margin = 15
  right-margin = 15
  top-margin = 10
  bottom-margin = 15

  two-sided = ##t
  inner-margin = 15
  outer-margin = 15

  top-markup-spacing = #'((basic-distance . 6)
                          (minimum-distance . 5)
                          (padding . 5)
                          (stretchability . 10))

  top-system-spacing = #'((basic-distance . 10)
                          (minimum-distance . 5)
                          (padding . 5)
                          (stretchability . 10))
  markup-system-spacing = #'((basic-distance . 20)
                             (minimum-distance . 10)
                             (padding . 5)
                             (stretchability . 10))
  system-system-spacing = #'((basic-distance . 20)
                             (minimum-distance . 10)
                             (padding . 5)
                             (stretchability . 10))
  score-markup-spacing = #'((padding . 5)
                            (basic-distance . 15)
                            (minimum-distance . 5)
                            (stretchability . 20))

  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Latin Modern Roman"
     #:sans "Latin Modern Sans"
     #:typewriter "Monospace Regular"
     #:factor (/ staff-height pt 20)
    ))

  scoreTitleMarkup = \scoreTitleMarkupSetting
}
\header {
  tagline = ##f
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
        \set Staff.instrumentName = "S."
        \new Voice = "Sop" { \clef "treble" \global \sopranoMusic }
        \new Lyrics \lyricsto "Sop" { \sopranoLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = "A."
        \new Voice = "Alto" { \clef "treble" \global \altoMusic }
        \new Lyrics \lyricsto "Alto" { \altoLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = "T."
        \new Voice = "Ten" { \clef "treble_8" \global \tenorMusic }
        \new Lyrics \lyricsto "Ten" { \tenorLyrics }
      >>
      \new Staff <<
        \set Staff.instrumentName = "B."
        \new Voice = "Bass" { \clef "bass" \global \bassMusic }
        \new Lyrics \lyricsto "Bass" { \bassLyrics }
      >>
    >>
  >>
  \header {
    title = "Salut, Dame sainte"
    subtitle = "Motet à la Vierge pour chœur mixte a cappella"
    composer = "Olivier Bardot"
    poet = "Saint François d'Assise"
    dedication = "à Pierre Pincemaille"
    tagline = ""
  }
  \layout {
      ragged-last = ##f
      \context {
          \Staff \RemoveEmptyStaves
          \override NoteHead #'style = #'altdefault
          \override InstrumentName #'font-name = #"Monospace Regular"
      }
      \override LyricText #'font-name = #"Latin Modern Sans"
  }
}
\markup { \fill-line { " " \sans "À Châtillon&ndash;sur&ndash;Indre, août 2017" } }
