\version "2.20.0"
\language "english"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Book definition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Include common files
\include "libs/commonFunctions.ily"
\include "libs/settings.ily"
\include "libs/translations/fr.ily"
\include "libs/layouts/book-titling.ily"
\include "Psautier/pianoSettings.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Include each part of the Petite Messe de Saint Vincent de Paul
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "Psautier/Commun/psaume095-NativiteSeigneur-MesseDeLaNuit.ily"

%%%%% Define book
\book {
  \include "Psautier/bookPaper.ily"
  \header {
    title = \markup { \center-column { "Psaumes pour" "les dimanches et fêtes" } }
    subtitle = \markup { \center-column { "Année A" } }
    composer = "Jean Baptiste Favre"
    poet = "AELF"
    date = "2020"
  }

  \pageBreak % Ensure first page is blank for cover display

  %  1° dim de l'Avent		121-5	Dans la joie
  %  Immaculée conception	097-7	Chantez au Seigneur
  %  2° dim de l'Avent		071-3	En ces jours là
  %  3° dim de l'Avent		145-4	Viens, Seigneur
  %  4° dim de l'Avent		023-1	Qu'il vienne
  %  Veillée Noël		095-1	Aujourd'hui un sauveur
  \bookpart {
    \include "Psautier/scorePaper.ily"
    \header {
      piece = "Psaume 95"
      subsubtitle = "Nativité du Seigneur, messe de la nuit"
      date = "Saint Pierre Quiberon, 25 décembre 2018"
      title = ##f
      copyright = ##f
    }
    \PsXCV-NdS-partition
    \PsXCV-NdS-verseLyrics
  }
  %  Noël 25 décembre		096	La lumière aujourd'hui
  \bookpart {
    \PsXCV-NdS-partition
    \include "Psautier/scorePaper.ily"
    \header {
      piece = "Ps. 96: La lumière aujourd'hui"
      subsubtitle = "Nativité du Seigneur, messe de l'aurore"
      date = "Saint Pierre Quiberon, 25 décembre 2018"
      title = ##f
      copyright = ##f
      \include "Psautier/Commun/psaume095-NativiteSeigneur-MesseDeLaNuit.ily"
    }
  }
  %  Noël 25 décembre		097-2	La terre entière
  \bookpart {
    \include "Psautier/scorePaper.ily"
    \header {
      piece = "Ps. 97: La terre tout entière"
      subsubtitle = "Nativité du Seigneur, messe du jour"
      date = "Saint Pierre Quiberon, 25 décembre 2018"
      title = ##f
      copyright = ##f
    }
  }
  %  Sainte famille		127-3	Heureux les habitants
  %  Marie mère de Dieu 1°/1	066-1	Que Dieu nous prenne
  %  Epiphanie			071-2	Toutes les nations, Seigneur
  %  Baptême du seigneur		028	Dieu, bénis ton peuple
  %  2° dimanche ordinaire	039-0	Me voici Seigneur
  %  3° dimanche ordinaire	026-6	Le Seigneur est ma lumière
  %  4° dimanche ordinaire	145-5	Heureux le pauvre
  %  Présentation du seigneur	023-3	Gloire au Messie de Dieu
  %  5° dimanche ordinaire	111-1	Lumière
  %  6° dimanche ordinaire	118-3	Heureux ceux qui marchent
  %  7° dimanche ordinaire	102-4	Le Seigneur est tendresse
  %  8° dimanche ordinaire	061-1	En Dieu seul
  %  9° dimanche ordinaire	030-2	C'est toi, Seigneur
  %  Mercredi des cendres	050-11	Pitié Seigneur
  %  1° dimanche de carême	050-1	Pitié Seigneur
  %  2° dimanche de carême	032-0	Que ton amour Seigneur
  %  3° dimanche de carême	094-3	Aujourd'hui ne fermons pas
  %  4° dimanche de carême	022-11	Le Seigneur est mon berger
  %  5° dimanche de carême	129-1	Près du Seigneur
  %  Saint Joseph		088-1	Dieu fidèle à ta promesse
  %  Annonciation		039-0	Me voici Seigneur
  %  Dimanche des rameaux	021-1	Mon Dieu, mon Dieu
  %  Jeudi saint			115-1	La coupe de bénédiction
  %  Vendredi saint		030-1	O Père
  %  Veillée pascale		117-0	Alléluia Alléluia
  %  Dimanche de Pâques		117-1	Voici le jour
  %  2° dimanche de Pâques	117-2	Rendez grace
  %  3° dimanche de Pâques	015-3	Tu m'apprends, Seigneur
  %  4° dimanche de Pâques	022-1	Le Seigneur est mon berger
  %  5° dimanche de Pâques	032-4	Que ton amour Seigneur
  %  6° dimanche de Päques	065-1	Dieu, Terre entière, acclame
  %  Ascension du Seigneur	046	Dieu s'élève parmi les…
  %  7°dimanche de Pâques	026-3	J'en suis sûr
  %  Pentecôte			103-0	O Seigneur envoie
  %  Sainte Trinité		DN-3	A toi, louange et gloire
  %  Saint Sacrement		147-1	Glorifie le Seigneur
  %  Sacré Cœur			102-2	Aimons nous les uns
  %  9° dimanche ordinaire	030-2	C'est toi Seigneur
  %  10° dimanche ordinaire	049	Marchons sur les pas
  %  11° dimanche ordinaire	099-0	Tu nous guideras
  %  Naissance de St Jean	138	Je te rends grâce
  %  12° dimanche ordinaire	068-0	Dans ton grand amour
  %  13° dimanche ordinaire 	088-2	Ton amour Seigneur
  %  Saint Pierre et Paul	033-3	De toutes leurs épreuves
  %  14° dimanche ordinaire	144-7	Mon Dieu mon Roi
  %  15° dimanche ordinaire	064	Tu visites la terre
  %  16° dimanche ordinaire	085	Toi qui est bon
  %  17° dimanche ordinaire 	118-2	De quel amour j'aime
  %  18° dimanche ordinaire	144-6	Tu ouvres la main 1
  %  Trans figuration		096-0	Le Seigneur est Roi
  %  19° dimanche ordinaire	084	Fais nous voir
  %  Assomption (15 aout)	044-1	Debout à la droite du Seigneur
  %  20° dimanche ordinaire	066-2	Que les peuples
  %  21° dimanche ordinaire 	137-0	Seigneur éternel est ton amour
  %  22° dimanche ordinaire	062-0	Mon âme a soif Seigneur…
  %  23° dimanche ordinaire	094-3	Aujourd'hui ne fermez pas
  %  24° dimanche ordinaire	102-5	Le Seigneur est tendresse lent..
  %  Croix glorieuse (14 sept)	077-1	Par ta croix
  %  25° dimanche ordinaire	144-1	Proche est le seigneur
  %  26° dimanche ordinaire	024-1	Rappellle-toi Seigneur ta tend.
  %  27° dimanche ordinaire	079-1	La vigne du Seigneur de l'univers
  %  28° dimanche ordinaire	022-2	J'habiterai la maison du Seigneur
  %  29° dimanche ordinaire	95-2	Rendez au Seigneur la gloire
  %  30° dimanche ordinaire	017-1	Je t'aime Seigneur tu es ma force
  %  Tousssaint (1° nov)		023-5	Voici le peuple immense
  %  31° dimanche ordinaire	130-0	Garde mon âme dans la paix
  %  Défunts (2nov)		004-0	Garde mon âme dans la paix
  %  32° dimanche ordinaire	062-3	Mon ame a soif de Toi
  %  Dédicace du Latran		045	Voici la demeure de Dieu
  %  33° dimanche ordinaire	127-4	Heureux qui craint le Seigneur
  %  34° dim.ord Christ-Roi	022-111	Le Seigneur est mon berger

  \bookpart {
    \include "Psautier/scorePaper.ily"
    \header {
      piece = "Psaume 96"
      subsubtitle = "Messe de l'Aurore"
      title = ##f
      copyright = ##f
    }
  }
}