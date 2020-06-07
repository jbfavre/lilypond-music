\version "2.20.0"

\include "gregorian.ly"


\paper {
  #(include-special-characters)
  print-all-headers = ##t
}
\header {
  tagline = ##f
}
partition = \new VaticanaVoice = "cantus" {
      \clef "vaticana-do3"
        e e\ictus f \[e  \melisma \flexa d \melismaEnd \]  g\ictus g \[a \melisma  \pes c'  \melismaEnd\]  \augmentum c' \divisioMinima
      %\bar "" \break
        \[c' \melisma  \pes d'  \melismaEnd\] c' c'\ictus b a\ictus c' \[ \virga b \melisma \inclinatum a \inclinatum \augmentum  g \melismaEnd \] \divisioMaior
      \bar "" \break
        g a\ictus c' b\ictus a g\ictus a \augmentum g \divisioMinima
      %\bar "" \break
        a\ictus b g\ictus g e\ictus a \[ \augmentum  a \melisma \flexa \auctum \descendens  \augmentum d  \melismaEnd \] \divisioMaior
      \bar "" \break
        e g\ictus g e\ictus g a\ictus a  \augmentum g \divisioMinima
      %\bar "" \break
        a b\ictus g \[a  \melisma \flexa g \melismaEnd \] \[f  \melisma \flexa e \melismaEnd \] d \augmentum e \finalis
        \[e\melisma \pes f \flexa e \melismaEnd \] \[\augmentum d \melisma \pes \augmentum e \melismaEnd\]  \finalis
    }
\score {
  <<
    \partition
    \new Lyrics \lyricsto "cantus" {
      Tan -- tum er -- go Sa -- cra -- men -- tum
      Ve -- ne -- re -- mur cer -- nu -- i&nbsp;:
      Et an -- ti -- quum do -- cu -- men  -- tum
      No -- vo ce -- dat ri -- tu -- i&nbsp;:
      Praes -- tet fi -- des sup -- ple -- men -- tum
      Sen -- su -- um de -- fec -- tu -- i.
    }
    \new Lyrics \lyricsto "cantus" {
      Ge -- ni -- to -- ri, Ge -- ni -- to -- que
      Laus et Ju -- bi -- la -- ti -- o,
      Sa -- lus, ho -- nor, vir -- tus quo -- que
      Sit et be -- ne -- dic -- ti -- o&nbsp;:
      Pro -- ce -- den -- ti ab u -- tro -- que
      Com -- par sit lau -- da ti -- o.
      A -- men.
    }
  >>
  \header {
    title = "Tantum Ergo Sacramentum"
    composer = "St Thomas d'Aquin"
  }
}

\score {
  <<
    \partition
    \new Lyrics \lyricsto "cantus" {
      Pan -- ge, lin -- gua, glo -- ri -- o -- si
      cor -- po -- ris my -- ste -- ri -- um,
      san -- gui -- nis -- que pre -- ti -- o -- si,
      quem in mun -- di pre -- ti -- um
      fruc -- tus -- ven -- tris -- ge -- ne -- ro -- si
      Rex ef -- fu -- dit -- gen -- ti -- um.
    }
    \new Lyrics \lyricsto "cantus" {
      No -- bis da -- tus, no -- bis na -- tus
      ex in -- tac -- ta Vir -- gi -- ne,
      et in mun -- do con -- ver -- sa -- tus,
      spar -- so ver -- bi se -- mi -- ne,
      su -- i mo -- ras in -- co -- la -- tus
      mi -- ro clau -- sit or -- di -- ne.
    }
    \new Lyrics \lyricsto "cantus" {
      In su -- pre -- mæ noc -- te ce -- næ
      re -- cum -- bens cum fra -- tri -- bus,
      ob -- ser -- va -- ta le -- ge ple -- ne
      ci -- bis in le -- ga -- li -- bus,
      ci -- bum tur -- bæ du -- o -- de -- næ
      se dat su -- is ma -- ni -- bus.
    }
    \new Lyrics \lyricsto "cantus" {
      Ver -- bum ca -- ro pa -- nem ve -- rum
      ver -- bo car -- nem ef -- fi -- cit,
      fit -- que san -- guis Chris -- ti me -- rum,
      et, si sen -- sus de -- fi -- cit,
      ad fir -- man -- dum cor sin -- ce -- rum
      so -- la fi -- des suf -- fi -- cit.
      A -- men.
    }
  >>
  \header {
    title = "Pange lingua"
    composer = "St Thomas d'Aquin"
  }
}