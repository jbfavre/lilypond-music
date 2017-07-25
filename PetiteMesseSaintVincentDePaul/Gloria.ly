\version "2.18.2"
\language "english"

gloriaGlobal = {
  \key g \major
  \time 3/8
  \tempo 4. = 60
}

gloriaSolistMusic = \relative c' {
    \mark "Prêtre (ou chantre)"
      % Glória in excélsis Deo
      % Gloire à Dieu, au plus haut des cieux
      g'8 b\noBeam d c8 b\noBeam a g a4 b4. \break
    \mark "Chantre"
      % et in terra pax homínibus bonae voluntátis.
      % et paix sur la terre aux hommes qu'il aime.
      d8 c b c b a g a4 a4.
        b8 (c) d d (b) g c (b a) g4. \break
    \mark "Tous"
      % Laudámus te,
      % Nous te louons,
      g8 (b d) c b (a) b4.
    \mark "Chantre"
      % benedícimus te,
      % Nous te bénissons,
      b8 (a) b c b a b4. \break
    \mark "Tous"
      % adoramus te.
      % nous t'adorons.
      b8 (a) g fs (e) fs g4.
    \mark "Chantre"
      % Glorificámus te.
      % Nous te glorifions
      d'8 (b g) e'4 e8 e8 (cs) a fs'4. \break
    \mark "Tous"
      % Gratias agimus tibi propter magnam glóriam tuam,
      % nous te rendons grâce pour ton immense gloire,
      ds8 (cs) ds e c b a d4 b4. 
        b8 (a) b c4 c8 b c b a4 a8 \break
    \mark "Chantre"
      % Dómine Deus, Rex cæléstis,
      % Seigneur Dieur, Roi du ciel,
      g8 fs g a4 a8 b8 c b a4. 
      % Deus Pater omnípotens.
      % Dieu le Père tout puissant.
      d4. c b8 a g g a4 b4. \break
    \mark "Tous"
    % Dómine Fili Unigénite, Jesu Christe.
    % Seigneur Fils unique Jésus Christ.
    r4.
    \mark "Chantre"
    % Dómine Deus, Agnus Dei, Fílius Patris,
    % Seigneur Dieu, Agenau de Dieu, le Fils du Père,
    r4.
    \mark "Tous"
    % qui tollis peccáta mundi, miserére nobis;
    % toi qui enlèves le pêché du monde, prends pitié de nous;
    r4.
    \mark "Chantre"
    % Qui tollis peccáta mundi, suscipe deprecationem nostram;
    % toi qui enlèves le pêché du monde, reçois notre prière;
    r4.
    \mark "Tous"
    % Qui sedes ad déxteram Patris, miserére nobis.
    % Toi qui es assis à la droite du Père, prends pitié de nous
    r4.
    \mark "Chantre"
    % Quóniam tu solus Sanctus,
    % Car toi seul est Saint,
    r4.
    \mark "Tous"
    % tu solus Dóminus,
    % Toi seul es Seigneur,
    r4.
    \mark "Chantre"
    % tu solus Altíssimus, Iesu Christe,
    % toi seul est le très haut, Jésus Christ
    r4.
    \mark "Tous"
    % cum Sancto Spíritu, in glória Dei Patris.
    % avec le Saint Esprit, dans la gloire de Dieu le Père.
    r4.
    \mark "Tous"
      % Amen, Amen
      g8 (a) b c (d) e
      % Amen, Amen
      a, (b) cs d (e) fs
      % Amen, Amen
      b,8 (a) b c (b) g
      % Amen
      \set Score.tempoHideNote = ##t
      \tempo 4. = 50
        \override TextSpanner.bound-details.left.text = \markup { \upright \bold "rit." }
        a4\startTextSpan (d8) d2.\stopTextSpan \fermata
  }
gloriaSolistLyrics = \lyricmode {
      Gló -- ri -- a in ex -- cél -- sis De -- o
      et in ter -- ra pax ho -- mí -- ni -- bus bo -- nae vo -- lun -- tá -- tis.
      Lau -- dá -- mus te,
      be -- ne -- dí -- ci -- mus te,
      a -- do -- ra -- mus te.
      Glo -- ri -- fi -- cá -- mus te. Gra -- ti -- as a -- gi -- mus ti -- bi
      pro -- pter ma -- gnam gló -- ri -- am tu -- am,
      Dó -- mi -- ne De -- us, Rex cæ -- lés -- tis,
      De -- us Pa -- ter om -- ní -- po -- tens.
    %  Dó -- mi -- ne Fi -- li U -- ni -- gé -- ni -- te, Je -- su Chri -- ste.
    % Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris,
    % qui tol -- lis pec -- cáta mundi, mi -- se -- ré -- re no -- bis;
    % qui tol -- lis pec -- cáta mundi, sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram;
    % Qui se -- des ad déx -- te -- ram Pa -- tris, mi -- se -- ré -- re no -- bis.
    % Quó -- ni -- am tu so -- lus Sanc -- tus,
    % tu so -- lus Dó -- mi -- nus,
    % tu so -- lus Al -- tís -- si -- mus, Ie -- su Chri -- ste,
    % cum Sanc -- to Spí -- ri -- tu, in gló -- ria De -- i Pa -- tris.
      A -- men, A -- men, A -- men, A -- men, A -- men, A -- men, A -- men
  }

gloriaSopranoMusic = \gloriaSolistMusic
gloriaSopranoLyrics = \gloriaSolistLyrics

gloriaAltoMusic =  \relative c' {
    r4. r4 r4 r4 r4.
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
    r4. r4 r4 r4 r4.
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