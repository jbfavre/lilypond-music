\version "2.18.2"
\language "english"

gloriaGlobal = {
  \key e \major
  \time 3/8
  \tempo 4. = 60
}

gloriaIntonationMusic = \relative c' {
    \mark "Prêtre (ou chantre)"
      % Glória in excélsis Deo
      e4 e8 fs e fs gs4 e8 a (fs4) gs4. \break
  }
gloriaSolistMusic = \relative c' {
    \mark "Chantre"
      % et in terra pax homínibus
      b'4 b8 cs (b) a gs4 b8 a gs4 fs4. \break
      % bonae voluntátis.
      e8 (fs) gs gs (fs) e cs (ds4) e4. \break
    \mark "Tous"
      % Laudámus te,
      b'4. cs8 (b) a b4.
    \mark "Chantre"
      % benedícimus te,
      gs4 gs8 a gs fs gs4. \break
    \mark "Tous"
      % adoramus te.
      e8 (fs) gs gs (fs e cs) ds4 e4.
    \mark "Chantre"
      % Glorificámus te.
      b'4. cs4 b8 b (a) gs fs4. \break
    \mark "Tous"
      % Gratias agimus tibi
      e8 fs gs a gs e e (ds16 cs16 ds8) e4. \break
      % propter magnam glóriam tuam,
      cs4 cs8 b (e) gs a4 fs8 gs8 fs4 e4. \break
    \mark "Chantre"
      % Dómine Deus, Rex cæléstis,
      b'8 b b cs4 cs8 b (a) gs b (a gs) fs4. \break
      % Deus Pater omnípotens.
      e4. a gs8 fs e e fs4 gs4. \break
    \mark "Tous"
      % Dómine Fili Unigénite,
      b8 b b cs4 cs8 b (a) gs b (a) gs fs4. 
      % Jesu Christe.
      e4. a fs gs \break
    \mark "Chantre"
      % Dómine Deus, Agnus Dei,
      b8 b b cs4 cs8 b (a) gs b4 b8 \break
      % Fílius Patris,
      e,8 ds e a4. (fs) e \break
    \mark "Tous"
      % qui tollis peccáta mundi,
      r4 b8 e ds e fs4 fs8 gs4 gs8~ \break gs8
      % miserére nobis;
      gs8 fs e4 e8 fs4. gs \break
    \mark "Chantre"
      % Qui tollis peccáta mundi,
      r4 e8 gs fs gs a4 a8 b4. b4. \break
      % suscipe deprecationem nostram;
      b8 \break a gs a gs fs gs fs e fs4. fs \break
    \mark "Tous"
      % Qui sedes ad déxteram Patris,
      e4 e8 a4 a8 gs fs e fs4 fs8 \break
      % miserére nobis.
      b8 a gs e fs4 gs4. \break
    \mark "Chantre"
      % Quóniam tu solus Sanctus,
      es4 es8 es4 es8 es4 es8 es4. es4
    \mark "Tous"
      es8 \break
      % tu solus Dóminus,
      es4 es8 es8 es8 es8 \break
    \mark "Chantre"
      % tu solus Altíssimus,
      r4 es8 es8 es8 es8 es8 es8 es8 \break
      % Iesu Christe,
      es4. es4. es4. es4. \break
    \mark "Tous"
      % cum Sancto Spíritu,
      es8 es8 es8 es4 e8 es4
      % in glória Dei Patris.
      es8 es8 es8 es8 es4 es8 e4. e4. \break
    \break
    \mark "Tous"
      % Amen,
      e8 (fs gs a b) cs
      % Amen
      fs, (gs as b cs) ds
      % Amen
      bs (as bs cs a) e
      % Amen
      \set Score.tempoHideNote = ##t
      \tempo 4. = 50
        \override TextSpanner.bound-details.left.text = \markup { \upright \bold "rit." }
        fs8 \startTextSpan (b4) b2.\stopTextSpan \fermata
  }
gloriaIntonationLyrics = \lyricmode {
      Gló -- ri -- a in ex -- cél -- sis De -- o
}
gloriaSolistLyrics = \lyricmode {
      et in ter -- ra pax ho -- mí -- ni -- bus bo -- nae vo -- lun -- tá -- tis.
      Lau -- dá -- mus te,
      be -- ne -- dí -- ci -- mus te,
      a -- do -- ra -- mus te.
      Glo -- ri -- fi -- cá -- mus te. Gra -- ti -- as a -- gi -- mus ti -- bi
      pro -- pter ma -- gnam gló -- ri -- am tu -- am,
      Dó -- mi -- ne De -- us, Rex cæ -- lés -- tis,
      De -- us Pa -- ter om -- ní -- po -- tens.
      Dó -- mi -- ne Fi -- li U -- ni -- gé -- ni -- te, Je -- su Chri -- ste.
      Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris,
      qui tol -- lis pec -- cá -- ta mun -- di, mi -- se -- ré -- re no -- bis;
      qui tol -- lis pec -- cá -- ta mun -- di, sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram;
      Qui se -- des ad déx -- te -- ram Pa -- tris, mi -- se -- ré -- re no -- bis.
      Quó -- ni -- am tu so -- lus Sanc -- tus,
      tu so -- lus Dó -- mi -- nus,
      tu so -- lus Al -- tís -- si -- mus, Ie -- su Chri -- ste,
      cum Sanc -- to Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- tris.
      A -- men, A -- men, A -- men, A -- men
  }

gloriaSopranoMusic = \gloriaSolistMusic
gloriaSopranoLyrics = \gloriaSolistLyrics

gloriaAltoMusic =  \relative c' {
    fs4. (e4.) e4. fs4.
    g4. b e, g4.
    g4. fs4. g4.
    d'4. a4. g4.
    r4. r4. r4.
    b4 d8 e c g cs4 e8 fs d a
    b8 a fs g e g g4 fs8 g4.
  
    r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4.
    r4. r4. r4. r4. r4. r4. r4. r4. r4.
  
    b4 d8 e (c) g cs4 e8 fs (d) a | \break
    ds4 (fs8) e c (g)
    \override TextSpanner.bound-details.left.text =
    \markup { \upright \bold "rit." }
    c8\startTextSpan  a16 g16 a8 b2.\stopTextSpan \fermata
  }
gloriaAltoLyrics = \lyricmode {
    ter -- ra pax
    vo -- lun -- tá -- tis
    Lau -- da -- mus
  }

gloriaTenorMusic = \relative c {
    b'4. a g8 e c8 d4.
    d4. fs a e
    c4. d e
    fs4. e4. e4.
    e8 fs g c, d4 g,4.
    g8 a b c d e a, b cs d e fs
    fs8 ds b g' e b c a4 g4.
  
    r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4. r4.
    r4. r4. r4. r4. r4. r4. r4. r4. r4.
  
    d'8 (b) g c4 d8 e (cs) a d4 e8
    fs8 (ds) b g' (e) b
    \override TextSpanner.bound-details.left.text =
    \markup { \upright \bold "rit." }
    e8^\startTextSpan (a, <fs' \parenthesize fs,>) <\parenthesize g, g'>2.\stopTextSpan\fermata
  }
gloriaTenorLyrics = \lyricmode {
    ter -- ra ho -- mi -- ni -- bus
    vo -- lun -- tá -- tis
    Lau -- da -- mus
  }

gloriaBasseMusic = \gloriaTenorMusic
gloriaBasseLyrics = \gloriaTenorLyrics