\version "2.22.0"
\include "italiano.ly"
%en travaux
% la mise en page d'origine est commentée %/break
#(set-global-staff-size 16)
\header {
title = "Voici la demeure de Dieu parmi les hommes"
composer = "André Gouze"
tagline = ##f
}
\paper{
  indent=0
  print-page-number = ##f
  page-count = 1 % sur une page
}


\score {
\new ChoirStaff

<<
<<

\relative do' {\time 2/4 \key re \major
\stemUp s4.fad8 si4 si8 dod re4 re8 dod si si la la fad4 fad ^~ fad \breathe fad sol4. \bar "" %\break
sol8 si sol fad4 fad2 \breathe
\break % ++++++++++ ajout ++++++++
sol4^> sol ^~ sol8 sol si sol fad4 fad ^~ fad \bar "" %\break
mi^> ^~ mi8 mi fad sol fad4 mi fad2\fermata
\bar "||" \break
\cadenzaOn
la\breve si s8 la4 \breathe \bar "" %\break
la\breve sol s8 fad4 \breathe \bar "" %\break
fad\breve mi s8 fad4\bar "" %\break
re'\breve dod s8 si4 \bar "" %\break
si\breve la fad4 \breathe \bar "" %\break
fad\breve mi s8 fad4
\bar "||"
}




\\

\relative do' {
\stemDown s4. fad8 re4 re8 mi fad4 fad8 mi re re dod dod si4 si _~ si re dod4.
dod8 dod dod re _(dod) si2 mi8 _(re) dod4 _~ dod8 dod dod dod re _(dod) si4 _~ si
dod4 _~ dod8 dod re mi re4 si8 _(dod) re2
re\breve re mi8 fad4
fad\breve re mi8 re4
re\breve si dod8 re4
fad\breve mi fad8 sol4
sol\breve mi re4
re\breve si dod8 re4

}


\addlyrics {
  Voi -- ci la de -- meu -- re de Dieu par -- mi les hom -- mes Ma -- rie,
  Terre ad -- mi -- ra -- ble, Ter -- re de la Pro -- mes -- se, Mè -- re de l'Em -- ma -- nu -- el!
  \override LyricText #'self-alignment-X = #-1
  \set stanza = "1. " "L'Ange du Seigneur fut envoy" -- "é         à" Ma -- rie,
  "Et  la  Vierge   fut   éblou" -- "ie   par    la" Lu -- mière.
  \set stanza = "1. " "Écoute    Ma" -- "rie, Vierge" du Christ:
  "Tu   concevras   et   tu   enfante" -- ras un fils.
  \set stanza = "1. " "Tu   es  le    Paradis   nouveau      et      la" "Terre     Pro" -- mise:
  \set stanza = "1. " "En   toi   le Soleil   a   éta" -- "bli         sa" de -- meure.
}

\addlyrics {
  \repeat unfold 34 \skip 1
  \override LyricText #'self-alignment-X = #-1
  \set stanza = "2. " "Le   Seigneur   t'a   regar" -- "dée dans son" A -- mour;
  "Reçois   la   Parole   que,   par" "l'Ange, Il" t'en -- voie;
  \set stanza = "2. " "Il   vient   vers   nous,   le" "Dieu vé" -- ri -- table.
  "Il revêt   dans ton sein   la" "chair du premier" A -- dam,
  \set stanza = "2. " "Engendré   par le Père   et" "né dans le" temps,
  \set stanza = "2. " "Dieu   et homme,   Lumière   et" "Vie, le Créateur" du monde!
}

\addlyrics {
  \repeat unfold 34 \skip 1
  \override LyricText #'self-alignment-X = #-1
  \set stanza = "3. " "Voici la mère de mon Sau" -- "veur qui vient" à moi:
  "Bienheureuse es" "tu, toi qui" a cru,
  \set stanza = "3. " "et béni le" "fruit de tes" en -- trailles.
  "Ce   qui   est engendré   en toi" "vient de l’Es" -- prit Saint.
  \set stanza = "3. " "Dès    que    ta    salutation    a    reten" -- "ti à mes o" -- reilles,
  \set stanza = "3. " "l’Enfant   a   tressailli    d’allé" -- "gresse en" mon sein.

}

\addlyrics {
  \repeat unfold 34 \skip 1
  \override LyricText #'self-alignment-X = #-1
  \set stanza = "4. " "Réjouissez-vous avec moi, bien ai" -- "més du" Sei -- gneur;
  "Mon cœur est devenu le" Temple de Dieu;
  \set stanza = "4. " "Il   s'est   penché   sur son" humble ser -- vante.
  "Il a fait de mon sein   la" porte du Ciel;
  \set stanza = "4. " "En   moi,   Il   a   pris   chair,   le   Fils     U" -- "nique du" Père,
  \set stanza = "4. " "Jésus, le   plus   beau   des    en" -- fants des hommes.
}



>>

\\
\new Staff {
\clef bass
\key re \major
<<
\relative do {
\stemUp s4.^\markup "B.F." fad8 fad2 si si4 dod re2 ^~ re4 \breathe si si4.
si8 si si si ^(dod) re2 \breathe si4 si ^(si8) si si si si ^(dod) re4 ^~re \breathe
si ^~si8 si si si si4 sol si2
si\breve si s8 dod4 \breathe
dod\breve si s8 la4 \breathe
la\breve sol s8 si4
si\breve dod s8 re4 \breathe
re\breve dod la4 \breathe
la\breve sol s8 si4
}

\\
\relative do {
\stemDown s4._\markup "B.F." fad8 si,2 si si4 fad' si,2 _~ si4 si mi4.
mi8 sol mi si4 si2 mi4 mi _~ mi8 mi sol mi si4 si _~ si
sol'4 _~ sol8 sol fad mi re4 mi si2
si\breve sol' s8 fad4
fad\breve sol s8 re4
re\breve mi s8 si4
si\breve la' s8 sol4
sol\breve la re,4
re\breve mi s8 si4
}
>>
}

>>
\layout {
\context {
         \Score
         \remove "Bar_number_engraver"
     }
}

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 65 4)
      }
    }
}
