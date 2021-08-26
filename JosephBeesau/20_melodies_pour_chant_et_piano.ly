\version "2.22.0"
\language "english"
\include "../libs/smallcaps.ily"
\include "../libs/layouts/book-titling.ily"

cancelBookHeader = \header {
  title = ##f
  subtitle = ##f
  composer = ##f
}
cancelTagLine = \header {
  tagline = ##f
}
sourceFooter = \markup {
      \smaller \column {
        \center-align \sans \concat { "Transcription depuis l'édition 1920 parue aux É" \smallCaps ditions " M" \smallCaps aurice " S" \smallCaps énart}
        \center-align \sans \concat { "disponible sur Gallica à l'adresse https://gallica.bnf.fr/ark:/12148/bpt6k382832b"}
      }
    }
bookPaper = \paper {
    top-margin = 2\cm
    bottom-margin = 2\cm
    left-margin = 2\cm
    right-margin = 2\cm

    bookTitleMarkup = \markup \column {
      \fill-line { \sans \fontsize #5 \fromproperty #'header:composer }
      \combine \null \vspace #7
      \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
      \combine \null \vspace #4
      \fill-line { \sans \fontsize #10 \fromproperty #'header:title }
      \combine \null \vspace #1
      \fill-line { \sans \when-property #'header:subtitle \fontsize #3 \sans \fromproperty #'header:subtitle }
      \combine \null \vspace #3
      \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
      \combine \null \vspace #7
      \fill-line{
        \general-align #Y #0 {
          \epsfile #Y #55 #"JosephBeesau.eps"
        }
      }
    }
    oddFooterMarkup = \markup {
      \on-the-fly \last-page \fill-line {
        \sourceFooter
      }
    }
    evenFooterMarkup = \markup {
      \on-the-fly \last-page \fill-line {
        \sourceFooter
      }
    }
    tocTitleMarkup = \markup \huge \column {
      \fill-line { \null \sans "Table des matières" \null }
      \hspace #1
    }
    %tocItemMarkup = \markup {\sans \tocItemWithDotsMarkup }
    tocItemMarkup = \markup \fill-line { \fromproperty #'toc:text \fromproperty #'toc:page }
  }
bookHeader = \header {
    title = "20 mélodies"
    subtitle = "pour chant et piano"
    composer = \markup {
      \center-column {
        \concat { \bold { "Joseph B" \smallCaps éesau }}
        \concat { \italic { 1871 - 1940 }}
      }
    }
  }
%%%%%
%%%%%
%%%%% Print version
%%%%%
%%%%%
bookpartPaper = \paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  %left-margin = 2\cm
  %right-margin = 2\cm
  two-sided = ##t
  inner-margin = 1\cm
  outer-margin = 1\cm
  binding-offset = 0\cm

  markup-system-spacing =
    #'((padding . 20)
       (basic-distance . 15)
       (minimum-distance . 20)
       (stretchability . 12))

  #(include-special-characters)
}
bookpartPaperStretch = \paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  %left-margin = 2\cm
  %right-margin = 2\cm
  two-sided = ##t
  inner-margin = 1\cm
  outer-margin = 1\cm
  binding-offset = 0\cm

  #(include-special-characters)
}
\book {
  \bookPaper
  \bookHeader
  \pageBreak \markuplist \table-of-contents \pageBreak

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;1.&nbsp;" \sans "Nocturne"}
    \include "20_melodies_pour_chant_et_piano-01_Nocturne.ly"
    \cancelTagLine
    \bookpartPaper
  }

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "&nbsp;2.&nbsp;" \sans "Près de la Mer"}
  %  \include "20_melodies_pour_chant_et_piano-02_Pres_de_la_mer.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "&nbsp;3.&nbsp;" \sans "Échange de fleurs"}
  %  \include "20_melodies_pour_chant_et_piano-03_Echange_de_fleurs.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "&nbsp;4.&nbsp;" \sans "Le jour des morts"}
  %  \include "20_melodies_pour_chant_et_piano-04_Le_jour_des_morts.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;5.&nbsp;" \sans "Le Ciel en nuit s'est déplié"}
    \include "20_melodies_pour_chant_et_piano-05_Le_ciel_en_nuit_s_est_deplie.ly"
    \cancelTagLine
    \bookpartPaper
  }

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;6.&nbsp;" \sans "Les plaintes d'Ariane"}
    \include "20_melodies_pour_chant_et_piano-06_Les_plaintes_d_Ariane.ly"
    \cancelTagLine
    \bookpartPaper
  }

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "&nbsp;7.&nbsp;" \sans "Chanson du vent"}
  %  \include "20_melodies_pour_chant_et_piano-07_Chanson_du_vent.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;8.&nbsp;" \sans "Spleen"}
    \include "20_melodies_pour_chant_et_piano-08_Spleen.ly"
    \cancelTagLine
    \bookpartPaper
  }

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;9.&nbsp;" \sans "Chanson"}
    \include "20_melodies_pour_chant_et_piano-09_Chanson.ly"
    \cancelTagLine
    \bookpartPaper
  }

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "10.&nbsp;" \sans "Et s'il revenait un jour"}
    \include "20_melodies_pour_chant_et_piano-10_Et_s_il_revenait_un_jour.ly"
    \cancelTagLine
    \bookpartPaper
  }

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "11.&nbsp;" \sans "Duo"}
  %  \include "20_melodies_pour_chant_et_piano-11_Duo.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "12.&nbsp;" \sans "Pâle et lente"}
  %  \include "20_melodies_pour_chant_et_piano-12_Pale_et_lente.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "13.&nbsp;" \sans "Le soir sur l'eau"}
  %  \include "20_melodies_pour_chant_et_piano-13_Le_soir_sur_l_eau.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "14.&nbsp;" \sans "Il pleut des pétales de fleurs"}
  %  \include "20_melodies_pour_chant_et_piano-14_Il_pleut_des_pétales_de_fleurs.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "15.&nbsp;" \sans "Je suis ébauché ce soir"}
  %  \include "20_melodies_pour_chant_et_piano-15_Je_suis_ebauche_ce_soir.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "16.&nbsp;" \sans "Désir d'hiver"}
  %  \include "20_melodies_pour_chant_et_piano-16_Désir_d_hiver.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "17.&nbsp;" \sans "Sur la terre il tombe de la neige"}
    \include "20_melodies_pour_chant_et_piano-17_Sur_la_terre_il_tombe_de_la_neige.ly"
    \cancelTagLine
    \bookpartPaperStretch
  }

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "18.&nbsp;" \sans "En mai"}
  %  \include "20_melodies_pour_chant_et_piano-18_En_mai.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "19.&nbsp;" \sans "Le temps des saintes"}
  %  \include "20_melodies_pour_chant_et_piano-19_Le_temps_des_Saintes.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "20.&nbsp;" \sans "Chanson de bord"}
  %  \include "20_melodies_pour_chant_et_piano-20_Chanson_de_bord.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

}
%%%%%
%%%%%
%%%%% eReader version
%%%%%
%%%%%
bookpartPaper = \paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  two-sided = ##f
  inner-margin = 0\cm
  binding-offset = 0\cm
  outer-margin = 0\cm

  markup-system-spacing =
    #'((padding . 20)
       (basic-distance . 15)
       (minimum-distance . 20)
       (stretchability . 12))

  #(include-special-characters)
}
bookpartPaperStretch = \paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  two-sided = ##f
  inner-margin = 0\cm
  binding-offset = 0\cm
  outer-margin = 0\cm

  #(include-special-characters)
}
\book {
  \bookPaper
  \bookHeader
  \bookOutputSuffix "eReader"
  \pageBreak

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;1.&nbsp;" \sans "Nocturne"}
    \include "20_melodies_pour_chant_et_piano-01_Nocturne.ly"
    \cancelTagLine
    \bookpartPaper
  }

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "&nbsp;2.&nbsp;" \sans "Près de la Mer"}
  %  \include "20_melodies_pour_chant_et_piano-02_Pres_de_la_mer.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "&nbsp;3.&nbsp;" \sans "Échange de fleurs"}
  %  \include "20_melodies_pour_chant_et_piano-03_Echange_de_fleurs.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "&nbsp;4.&nbsp;" \sans "Le jour des morts"}
  %  \include "20_melodies_pour_chant_et_piano-04_Le_jour_des_morts.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;5.&nbsp;" \sans "Le Ciel en nuit s'est déplié"}
    \include "20_melodies_pour_chant_et_piano-05_Le_ciel_en_nuit_s_est_deplie.ly"
    \cancelTagLine
    \bookpartPaper
  }

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;6.&nbsp;" \sans "Les plaintes d'Ariane"}
    \include "20_melodies_pour_chant_et_piano-06_Les_plaintes_d_Ariane.ly"
    \cancelTagLine
    \bookpartPaper
  }

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "&nbsp;7.&nbsp;" \sans "Chanson du vent"}
  %  \include "20_melodies_pour_chant_et_piano-07_Chanson_du_vent.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;8.&nbsp;" \sans "Spleen"}
    \include "20_melodies_pour_chant_et_piano-08_Spleen.ly"
    \cancelTagLine
    \bookpartPaper
  }

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "&nbsp;9.&nbsp;" \sans "Chanson"}
    \include "20_melodies_pour_chant_et_piano-09_Chanson.ly"
    \cancelTagLine
    \bookpartPaper
  }

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "10.&nbsp;" \sans "Et s'il revenait un jour"}
    \include "20_melodies_pour_chant_et_piano-10_Et_s_il_revenait_un_jour.ly"
    \cancelTagLine
    \bookpartPaper
  }

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "11.&nbsp;" \sans "Duo"}
  %  \include "20_melodies_pour_chant_et_piano-11_Duo.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "12.&nbsp;" \sans "Pâle et lente"}
  %  \include "20_melodies_pour_chant_et_piano-12_Pale_et_lente.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "13.&nbsp;" \sans "Le soir sur l'eau"}
  %  \include "20_melodies_pour_chant_et_piano-13_Le_soir_sur_l_eau.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "14.&nbsp;" \sans "Il pleut des pétales de fleurs"}
  %  \include "20_melodies_pour_chant_et_piano-14_Il_pleut_des_pétales_de_fleurs.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "15.&nbsp;" \sans "Je suis ébauché ce soir"}
  %  \include "20_melodies_pour_chant_et_piano-15_Je_suis_ebauche_ce_soir.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "16.&nbsp;" \sans "Désir d'hiver"}
  %  \include "20_melodies_pour_chant_et_piano-16_Désir_d_hiver.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  \bookpart {
    \cancelBookHeader
    \tocItem \markup {\typewriter "17.&nbsp;" \sans "Sur la terre il tombe de la neige"}
    \include "20_melodies_pour_chant_et_piano-17_Sur_la_terre_il_tombe_de_la_neige.ly"
    \cancelTagLine
    \bookpartPaperStretch
  }

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "18.&nbsp;" \sans "En mai"}
  %  \include "20_melodies_pour_chant_et_piano-18_En_mai.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "19.&nbsp;" \sans "Le temps des saintes"}
  %  \include "20_melodies_pour_chant_et_piano-19_Le_temps_des_Saintes.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

  %\bookpart {
  %  \cancelBookHeader
  %  \tocItem \markup {\typewriter "20.&nbsp;" \sans "Chanson de bord"}
  %  \include "20_melodies_pour_chant_et_piano-20_Chanson_de_bord.ly"
  %  \cancelTagLine
  %  \bookpartPaper
  %}

}