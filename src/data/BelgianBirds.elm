module BelgianBirds exposing (belgianBirdsQuiz, latinBirdsQuiz)

import Array
import Quiz exposing (ImgQuizItem, QuizQa)


belgianBirdsQuiz : Array.Array QuizQa
belgianBirdsQuiz =
    Array.fromList
        (List.map
            (\bird ->
                { question = "/assets/img/belgian_birds/resized/" ++ bird.id ++ ".jpg"
                , answer = bird.vernacularName
                , title = bird.license
                }
            )
            belgianBirdsData
        )


latinBirdsQuiz : Array.Array QuizQa
latinBirdsQuiz =
    Array.fromList
        (List.map
            (\bird ->
                { question = "/assets/img/belgian_birds/resized/" ++ bird.id ++ ".jpg"
                , answer = bird.binominalName
                , title = bird.license
                }
            )
            belgianBirdsData
        )


belgianBirdsData : List ImgQuizItem
belgianBirdsData =
    [ { id = "bb59"
      , vernacularName = "Accenteur mouchet"
      , binominalName = "Prunella modularis"
      , license = "Par Karstenderivative work — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7023601"
      }
    , { id = "bb60"
      , vernacularName = "Alouette des champs"
      , binominalName = "Alauda arvensis"
      , license = "Par Daniel Pettersson — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=1722926"
      }
    , { id = "bb61"
      , vernacularName = "Autour des palombes"
      , binominalName = "Accipiter gentilis"
      , license = "Par Cymbella — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=21467538"
      }
    , { id = "bb62"
      , vernacularName = "Avocette élégante"
      , binominalName = "Recurvirostra avosetta"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=10610115"
      }
    , { id = "bb63"
      , vernacularName = "Balbuzard pêcheur"
      , binominalName = "Pandion haliaetus"
      , license = "Par Yathin S Krishnappa — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=21376478"
      }
    , { id = "bb64"
      , vernacularName = "Bec-croisé des sapins"
      , binominalName = "Loxia curvirostra"
      , license = "Par User:Aelwyn — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2230007"
      }
    , { id = "bb65"
      , vernacularName = "Bécasse des bois"
      , binominalName = "Scolopax rusticola"
      , license = "Par Ronald Slabke — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=5703078"
      }
    , { id = "bb66"
      , vernacularName = "Bécasseau variable"
      , binominalName = "Calidris alpina"
      , license = "Par Jevgenijs Slihto, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=42966339"
      }
    , { id = "bb67"
      , vernacularName = "Bécassine des marais"
      , binominalName = "Gallinago gallinago"
      , license = "Par Pierre DalousLieu — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=21528551"
      }
    , { id = "bb68"
      , vernacularName = "Bergeronnette des ruisseaux"
      , binominalName = "Motacilla cinerea"
      , license = "Par Lip Kee Yap — Flickr: Grey wagtail, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=14637693"
      }
    , { id = "bb69"
      , vernacularName = "Bergeronnette grise"
      , binominalName = "Motacilla alba"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=3800685"
      }
    , { id = "bb70"
      , vernacularName = "Bergeronnette printanière"
      , binominalName = "Motacilla flava"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=6685421"
      }
    , { id = "bb71"
      , vernacularName = "Bernache du Canada"
      , binominalName = "Branta canadensis"
      , license = "Par Connormah — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27394270"
      }
    , { id = "bb72"
      , vernacularName = "Bouvreuil pivoine"
      , binominalName = "Pyrrhula pyrrhula"
      , license = "Par Francis C. Franklin — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=37675952"
      }
    , { id = "bb73"
      , vernacularName = "Bruant des roseaux"
      , binominalName = "Emberiza schoeniclus"
      , license = "Par Gidzy, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=6447232"
      }
    , { id = "bb74"
      , vernacularName = "Bruant jaune"
      , binominalName = "Emberiza citrinella"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=3986639"
      }
    , { id = "bb75"
      , vernacularName = "Busard des roseaux"
      , binominalName = "Circus aeruginosus"
      , license = "Par Sumeet Moghe — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=49477506"
      }
    , { id = "bb76"
      , vernacularName = "Busard Saint-Martin"
      , binominalName = "Circus cyaneus"
      , license = "Par Katy Prairie Conservancy — https://commons.wikimedia.org/w/index.php?curid=5100533"
      }
    , { id = "bb77"
      , vernacularName = "Buse variable"
      , binominalName = "Buteo buteo"
      , license = "Par Marek Szczepanek — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=90587"
      }
    , { id = "bb78"
      , vernacularName = "Butor étoilé"
      , binominalName = "Botaurus stellaris"
      , license = "Par Marek Szczepanek — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=63238"
      }
    , { id = "bb79"
      , vernacularName = "Canard colvert"
      , binominalName = "Anas platyrhynchos"
      , license = "Par Richard Bartz — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=6449086"
      }
    , { id = "bb80"
      , vernacularName = "Canard pilet"
      , binominalName = "Anas acuta"
      , license = "Par Adam Kumiszcza — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=17692763"
      }
    , { id = "bb81"
      , vernacularName = "Canard souchet"
      , binominalName = "Anas clypeata"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=15010945"
      }
    , { id = "bb82"
      , vernacularName = "Cassenoix moucheté"
      , binominalName = "Nucifraga caryocatactes"
      , license = "Par MurrayBHenson — https://commons.wikimedia.org/w/index.php?curid=3708573"
      }
    , { id = "bb83"
      , vernacularName = "Chardonneret élégant"
      , binominalName = "Carduelis carduelis"
      , license = "Par Pierre Dalous — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=22525310"
      }
    , { id = "bb84"
      , vernacularName = "Chevalier culblanc"
      , binominalName = "Tringa ochropus"
      , license = "CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=93990"
      }
    , { id = "bb85"
      , vernacularName = "Chevalier gambette"
      , binominalName = "Tringa totanus"
      , license = "Par Frank Vassen — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=17063128"
      }
    , { id = "bb86"
      , vernacularName = "Chevalier guignette"
      , binominalName = "Actitis hypoleucos"
      , license = "Par Marek Szczepanek — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=63227"
      }
    , { id = "bb87"
      , vernacularName = "Chevêche d'Athéna"
      , binominalName = "Athene noctua"
      , license = "Par Tony Wills — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=36442532"
      }
    , { id = "bb88"
      , vernacularName = "Choucas des tours"
      , binominalName = "Coloeus monedula"
      , license = "Par Darkone — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=665741"
      }
    , { id = "bb89"
      , vernacularName = "Chouette hulotte"
      , binominalName = "Strix aluco"
      , license = "Par K.-M. Hansche — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=775782"
      }
    , { id = "bb90"
      , vernacularName = "Cigogne blanche"
      , binominalName = "Ciconia ciconia"
      , license = "Par Dcabrilo — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4675672"
      }
    , { id = "bb91"
      , vernacularName = "Cigogne noire"
      , binominalName = "Ciconia nigra"
      , license = "Par Chris EasonLieu — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=6489838"
      }
    , { id = "bb92"
      , vernacularName = "Cincle plongeur"
      , binominalName = "Cinclus cinclus"
      , license = "Par Mark Medcalf — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=15739681"
      }
    , { id = "bb93"
      , vernacularName = "Corbeau freux"
      , binominalName = "Corvus frugilegus"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=19133958"
      }
    , { id = "bb94"
      , vernacularName = "Corneille noire"
      , binominalName = "Corvus corone"
      , license = "Par Loz (L. B. Tettenborn) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2380746"
      }
    , { id = "bb95"
      , vernacularName = "Coucou gris"
      , binominalName = "Cuculus canorus"
      , license = "Par Vogelartinfoderivative work — GFDL 1.2, https://commons.wikimedia.org/w/index.php?curid=16077960"
      }
    , { id = "bb96"
      , vernacularName = "Courlis cendré"
      , binominalName = "Numenius arquata"
      , license = "Par Ken Billington — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=12307666"
      }
    , { id = "bb97"
      , vernacularName = "Cygne chanteur"
      , binominalName = "Cygnus cygnus"
      , license = "Par Rhion — https://commons.wikimedia.org/w/index.php?curid=450423"
      }
    , { id = "bb98"
      , vernacularName = "Cygne tuberculé"
      , binominalName = "Cygnus olor"
      , license = "Par Sanchezn — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=3019282"
      }
    , { id = "bb99"
      , vernacularName = "Effraie des clochers"
      , binominalName = "Tyto alba"
      , license = "Par Peter Trimming — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=15975742"
      }
    , { id = "bb100"
      , vernacularName = "Épervier d'Europe"
      , binominalName = "Accipiter nisus"
      , license = "Par Meneer Zjeroen — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=8528830"
      }
    , { id = "bb101"
      , vernacularName = "Étourneau sansonnet"
      , binominalName = "Sturnus vulgaris"
      , license = "Par Marek Szczepanek — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=12866593"
      }
    , { id = "bb102"
      , vernacularName = "Faisan de Colchide"
      , binominalName = "Phasianus colchicus"
      , license = "Par ChrisO — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2367271"
      }
    , { id = "bb103"
      , vernacularName = "Faucon crécerelle"
      , binominalName = "Falco tinnunculus"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=6542109"
      }
    , { id = "bb104"
      , vernacularName = "Faucon hobereau"
      , binominalName = "Falco subbuteo"
      , license = "Par Mike Prince - CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=62046802"
      }
    , { id = "bb105"
      , vernacularName = "Faucon pèlerin"
      , binominalName = "Falco peregrinus"
      , license = "Par Carlos Delgado — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=38755194"
      }
    , { id = "bb106"
      , vernacularName = "Fauvette à tête noire"
      , binominalName = "Sylvia atricapilla"
      , license = "Par Ron Knight — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=31193932"
      }
    , { id = "bb107"
      , vernacularName = "Fauvette des jardins"
      , binominalName = "Sylvia borin"
      , license = "Par Biillyboy — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=11427509"
      }
    , { id = "bb108"
      , vernacularName = "Fauvette grisette"
      , binominalName = "Sylvia communis"
      , license = "Par markkilner — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=7607222"
      }
    , { id = "bb109"
      , vernacularName = "Foulque macroule"
      , binominalName = "Fulica atra"
      , license = "Par Arpingstone — https://commons.wikimedia.org/w/index.php?curid=196325"
      }
    , { id = "bb110"
      , vernacularName = "Fuligule milouin"
      , binominalName = "Aythya ferina"
      , license = "Par Neil Phillips — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=4287883"
      }
    , { id = "bb111"
      , vernacularName = "Fuligule morillon"
      , binominalName = "Aythya fuligula"
      , license = "Par Tim Felce — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=27813802"
      }
    , { id = "bb112"
      , vernacularName = "Gallinule poule-d'eau"
      , binominalName = "Gallinula chloropus"
      , license = "Par Mathias Bigge — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2686402"
      }
    , { id = "bb113"
      , vernacularName = "Garrot à oeil d'or"
      , binominalName = "Bucephala clangula"
      , license = "Par Adrian Pingstone — https://commons.wikimedia.org/w/index.php?curid=71030"
      }
    , { id = "bb114"
      , vernacularName = "Geai des chênes"
      , binominalName = "Garrulus glandarius"
      , license = "Par Luc Viatour — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=5933620"
      }
    , { id = "bb115"
      , vernacularName = "Gobemouche gris"
      , binominalName = "Muscicapa striata"
      , license = "Par Andrew Easton — https://commons.wikimedia.org/w/index.php?curid=251327"
      }
    , { id = "bb116"
      , vernacularName = "Gobemouche noir"
      , binominalName = "Ficedula hypoleuca"
      , license = "Par Ron Knight — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=26256664"
      }
    , { id = "bb117"
      , vernacularName = "Goéland argenté"
      , binominalName = "Larus argentatus"
      , license = "Par Aiwok — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=11357929"
      }
    , { id = "bb118"
      , vernacularName = "Goéland brun"
      , binominalName = "Larus fuscus"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=723467"
      }
    , { id = "bb119"
      , license = "Par Kathy2408 — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=58991576"
      , vernacularName = "Goéland cendré"
      , binominalName = "Larus canus"
      }
    , { id = "bb120"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=10944563"
      , vernacularName = "Goéland marin"
      , binominalName = "Larus marinus"
      }
    , { id = "bb121"
      , license = "Par Alpo Roikola — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=41343287"
      , vernacularName = "Gorgebleue à miroir"
      , binominalName = "Luscinia svecica"
      }
    , { id = "bb122"
      , license = "Par Martin Mecnarowski — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=12686049"
      , vernacularName = "Grand-duc d'Europe"
      , binominalName = "Bubo bubo"
      }
    , { id = "bb123"
      , license = "Par David Hofmann — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=11342048"
      , vernacularName = "Grand Corbeau"
      , binominalName = "Corvus corax"
      }
    , { id = "bb124"
      , license = "Par JJ Harrison — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9761097"
      , vernacularName = "Grand Cormoran"
      , binominalName = "Phalacrocorax carbo"
      }
    , { id = "bb125"
      , license = "Par User:Chmehl — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=2261496"
      , vernacularName = "Grande Aigrette"
      , binominalName = "Ardea alba"
      }
    , { id = "bb126"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=33521634"
      , vernacularName = "Grèbe à cou noir"
      , binominalName = "Podiceps nigricollis"
      }
    , { id = "bb127"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=33505667"
      , vernacularName = "Grèbe castagneux"
      , binominalName = "Tachybaptus ruficollis"
      }
    , { id = "bb128"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=90629"
      , vernacularName = "Grèbe huppé"
      , binominalName = "Podiceps cristatus"
      }
    , { id = "bb129"
      , license = "Par Eurasian_Treecreeper_in_the_snow.jpg — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=7991208"
      , vernacularName = "Grimpereau des bois"
      , binominalName = "Certhia familiaris"
      }
    , { id = "bb130"
      , license = "Par א (Aleph) — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=3906322"
      , vernacularName = "Grimpereau des jardins"
      , binominalName = "Certhia brachydactyla"
      }
    , { id = "bb131"
      , license = "Par Neil Phillips — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=3663992"
      , vernacularName = "Grive draine"
      , binominalName = "Turdus viscivorus"
      }
    , { id = "bb132"
      , license = "Par hedera.baltica — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=43379234"
      , vernacularName = "Grive litorne"
      , binominalName = "Turdus pilaris"
      }
    , { id = "bb133"
      , license = "Par Ómar Runólfsson — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=15658059"
      , vernacularName = "Grive mauvis"
      , binominalName = "Turdus iliacus"
      }
    , { id = "bb134"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=22435708"
      , vernacularName = "Grive musicienne"
      , binominalName = "Turdus philomelos"
      }
    , { id = "bb135"
      , license = "Par Martin Mecnarowski — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=12686196"
      , vernacularName = "Grosbec casse-noyaux"
      , binominalName = "Coccothraustes coccothraustes"
      }
    , { id = "bb136"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=39163967"
      , vernacularName = "Grue cendrée"
      , binominalName = "Grus grus"
      }
    , { id = "bb137"
      , license = "Par Toivo Toivanen &amp; Tiina Toppila — Public domain, https://commons.wikimedia.org/w/index.php?curid=73656"
      , vernacularName = "Harle bièvre"
      , binominalName = "Mergus merganser"
      }
    , { id = "bb138"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=73580"
      , vernacularName = "Harle piette"
      , binominalName = "Mergellus albellus"
      }
    , { id = "bb139"
      , license = "Par JJ Harrison — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=13352774"
      , vernacularName = "Héron cendré"
      , binominalName = "Ardea cinerea"
      }
    , { id = "bb140"
      , license = "Par Caryn — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=11164107"
      , vernacularName = "Hibou des marais"
      , binominalName = "Asio flammeus"
      }
    , { id = "bb141"
      , license = "Par Mindaugas Urbonas — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2690564"
      , vernacularName = "Hibou moyen-duc"
      , binominalName = "Asio otus"
      }
    , { id = "bb142"
      , license = "Par Estormiz — CC0, https://commons.wikimedia.org/w/index.php?curid=19615759"
      , vernacularName = "Hirondelle de fenêtre"
      , binominalName = "Delichon urbicum"
      }
    , { id = "bb143"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=21446"
      , vernacularName = "Hirondelle de rivage"
      , binominalName = "Riparia riparia"
      }
    , { id = "bb144"
      , license = "Par Ptyonoprogne_rupestris_flock.jpg — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10005953"
      , vernacularName = "Hirondelle de rochers"
      , binominalName = "Ptyonoprogne rupestris"
      }
    , { id = "bb145"
      , license = "Par Malene Thyssen — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=20612"
      , vernacularName = "Hirondelle rustique"
      , binominalName = "Hirundo rustica"
      }
    , { id = "bb146"
      , license = "Par Richard Bartz — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27446701"
      , vernacularName = "Huîtrier pie"
      , binominalName = "Haematopus ostralegus"
      }
    , { id = "bb147"
      , license = "Par Frank Vassen — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=48850541"
      , vernacularName = "Hypolaïs polyglotte"
      , binominalName = "Hippolais polyglotta"
      }
    , { id = "bb148"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=44050"
      , vernacularName = "Jaseur boréal"
      , binominalName = "Bombycilla garrulus"
      }
    , { id = "bb149"
      , license = "Par Pierre Dalous — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=19100308"
      , vernacularName = "Linotte mélodieuse"
      , binominalName = "Carduelis cannabina"
      }
    , { id = "bb150"
      , license = "Par Stefan Hage, Birds.se — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2544559"
      , vernacularName = "Locustelle tachetée"
      , binominalName = "Locustella naevia"
      }
    , { id = "bb151"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=48853"
      , vernacularName = "Loriot d'Europe"
      , binominalName = "Oriolus oriolus"
      }
    , { id = "bb152"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=29351592"
      , vernacularName = "Martin-pêcheur d'Europe"
      , binominalName = "Alcedo atthis"
      }
    , { id = "bb153"
      , license = "Par Philip Heron — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6907145"
      , vernacularName = "Martinet noir"
      , binominalName = "Apus apus"
      }
    , { id = "bb154"
      , license = "Par Andreas Trepte, — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=17030554"
      , vernacularName = "Merle à plastron"
      , binominalName = "Turdus torquatus"
      }
    , { id = "bb155"
      , license = "Par PierreSelim — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=15654080"
      , vernacularName = "Merle noir"
      , binominalName = "Turdus merula"
      }
    , { id = "bb156"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=6668932"
      , vernacularName = "Mésange à longue queue"
      , binominalName = "Aegithalos caudatus"
      }
    , { id = "bb157"
      , license = "Par PeterRohrbeck — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=59394565"
      , vernacularName = "Mésange bleue"
      , binominalName = "Cyanistes caeruleus"
      }
    , { id = "bb158"
      , license = "Par Francis C. Franklin — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=31622934"
      , vernacularName = "Mésange boréale"
      , binominalName = "Poecile montanus"
      }
    , { id = "bb159"
      , license = "Par Luc Viatour — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=4935129"
      , vernacularName = "Mésange charbonnière"
      , binominalName = "Parus major"
      }
    , { id = "bb160"
      , license = "Par Carlos Delgado — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41082033"
      , vernacularName = "Mésange huppée"
      , binominalName = "Lophophanes cristatus"
      }
    , { id = "bb161"
      , license = "Par here — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=98232"
      , vernacularName = "Mésange noire"
      , binominalName = "Periparus ater"
      }
    , { id = "bb162"
      , license = "Par Steffen Hannert — Copyrighted free use, https://commons.wikimedia.org/w/index.php?curid=98332"
      , vernacularName = "Mésange nonnette"
      , binominalName = "Poecile palustris"
      }
    , { id = "bb163"
      , license = "Par ThKraft — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=3808120"
      , vernacularName = "Milan noir"
      , binominalName = "Milvus migrans"
      }
    , { id = "bb164"
      , license = "Par Noel Reynolds — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=20461516"
      , vernacularName = "Milan royal"
      , binominalName = "Milvus milvus"
      }
    , { id = "bb165"
      , license = "Par Fir0002 — GFDL 1.2, https://commons.wikimedia.org/w/index.php?curid=7202303"
      , vernacularName = "Moineau domestique"
      , binominalName = "Passer domesticus"
      }
    , { id = "bb166"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=5964819"
      , vernacularName = "Moineau friquet"
      , binominalName = "Passer montanus"
      }
    , { id = "bb167"
      , license = "Par Richard Crossley — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=29316205"
      , vernacularName = "Mouette rieuse"
      , binominalName = "Chroicocephalus ridibundus"
      }
    , { id = "bb168"
      , license = "Par Diliff — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=1385555"
      , vernacularName = "Oie cendrée"
      , binominalName = "Anser anser"
      }
    , { id = "bb169"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=35147"
      , vernacularName = "Oie rieuse"
      , binominalName = "Anser albifrons"
      }
    , { id = "bb170"
      , license = "Par Bernard DUPONT — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=40724877"
      , vernacularName = "Ouette d'Égypte"
      , binominalName = "Alopochen aegyptiaca"
      }
    , { id = "bb171"
      , license = "Par Kaeptn chemnitz — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=5033332"
      , vernacularName = "Panure à moustaches"
      , binominalName = "Panurus biarmicus"
      }
    , { id = "bb172"
      , license = "Par Marek Szczepanek — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=13404871"
      , vernacularName = "Perdrix grise"
      , binominalName = "Perdix perdix"
      }
    , { id = "bb173"
      , license = "Par J.M.Garg — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2975074"
      , vernacularName = "Perruche à collier"
      , binominalName = "Psittacula krameri"
      }
    , { id = "bb174"
      , license = "Par Pierre Dalous — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=20768943"
      , vernacularName = "Petit Gravelot"
      , binominalName = "Charadrius dubius"
      }
    , { id = "bb175"
      , license = "Par AbdAllah Elgolli — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=49099745"
      , vernacularName = "Pic épeiche"
      , binominalName = "Dendrocopos major"
      }
    , { id = "bb176"
      , license = "Par Thermos — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=1837011"
      , vernacularName = "Pic épeichette"
      , binominalName = "Dendrocopos minor"
      }
    , { id = "bb177"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=334121"
      , vernacularName = "Pic mar"
      , binominalName = "Dendrocopos medius"
      }
    , { id = "bb178"
      , license = "Par Alastair Rae — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=29371"
      , vernacularName = "Pic noir"
      , binominalName = "Dryocopus martius"
      }
    , { id = "bb179"
      , license = "Par Sven Teschke — CC BY-SA 2.0 de, https://commons.wikimedia.org/w/index.php?curid=173915"
      , vernacularName = "Pic vert"
      , binominalName = "Picus viridis"
      }
    , { id = "bb180"
      , license = "Par Martin Mecnarowski — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=12691146"
      , vernacularName = "Pie-grièche écorcheur"
      , binominalName = "Lanius collurio"
      }
    , { id = "bb181"
      , license = "Par Marek Szczepanek — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=98250"
      , vernacularName = "Pie-grièche grise"
      , binominalName = "Lanius excubitor"
      }
    , { id = "bb182"
      , license = "Par User:diginatur — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9717912"
      , vernacularName = "Pie bavarde"
      , binominalName = "Pica pica"
      }
    , { id = "bb183"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=794674"
      , vernacularName = "Pigeon biset"
      , binominalName = "Columba livia"
      }
    , { id = "bb184"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=14677999"
      , vernacularName = "Pigeon ramier"
      , binominalName = "Columba palumbus"
      }
    , { id = "bb185"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=15264293"
      , vernacularName = "Pinson des arbres"
      , binominalName = "Fringilla coelebs"
      }
    , { id = "bb186"
      , license = "Par Pierre Dalous — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=25152678"
      , vernacularName = "Pinson du Nord"
      , binominalName = "Fringilla montifringilla"
      }
    , { id = "bb187"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=98311"
      , vernacularName = "Pipit des arbres"
      , binominalName = "Anthus trivialis"
      }
    , { id = "bb188"
      , license = "Par Jenny Jones — CC0, https://commons.wikimedia.org/w/index.php?curid=47139448"
      , vernacularName = "Pipit farlouse"
      , binominalName = "Anthus pratensis"
      }
    , { id = "bb189"
      , license = "Par Marboline — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=727857"
      , vernacularName = "Pipit spioncelle"
      , binominalName = "Anthus spinoletta"
      }
    , { id = "bb190"
      , license = "Par Sylvain Haye — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7740632"
      , vernacularName = "Pluvier doré"
      , binominalName = "Pluvialis apricaria"
      }
    , { id = "bb191"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=14979556"
      , vernacularName = "Pouillot fitis"
      , binominalName = "Phylloscopus trochilus"
      }
    , { id = "bb192"
      , license = "Par Steve Garvie — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=11461348"
      , vernacularName = "Pouillot siffleur"
      , binominalName = "Phylloscopus sibilatrix"
      }
    , { id = "bb193"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=26494111"
      , vernacularName = "Pouillot véloce"
      , binominalName = "Phylloscopus collybita"
      }
    , { id = "bb194"
      , license = "Par Pierre Dalous — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=20972301"
      , vernacularName = "Râle d'eau"
      , binominalName = "Rallus aquaticus"
      }
    , { id = "bb195"
      , license = "Par Johann Friedrich Naumann — Public domain, https://commons.wikimedia.org/w/index.php?curid=252974"
      , vernacularName = "Râle des genêts"
      , binominalName = "Crex crex"
      }
    , { id = "bb196"
      , license = "Par Francis C. Franklin — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=38667947"
      , vernacularName = "Roitelet huppé"
      , binominalName = "Regulus regulus"
      }
    , { id = "bb197"
      , license = "Par Regulus_ignicapillus_1.jpg — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=8935861"
      , vernacularName = "Roitelet triple-bandeau"
      , binominalName = "Regulus ignicapilla"
      }
    , { id = "bb198"
      , license = "Par Orchi — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=503659"
      , vernacularName = "Rossignol philomèle"
      , binominalName = "Luscinia megarhynchos"
      }
    , { id = "bb199"
      , license = "Par PierreSelim — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=18454304"
      , vernacularName = "Rougegorge familier"
      , binominalName = "Erithacus rubecula"
      }
    , { id = "bb200"
      , license = "Par Monique Bogaerts — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=309389"
      , vernacularName = "Rougequeue à front blanc"
      , binominalName = "Phoenicurus phoenicurus"
      }
    , { id = "bb201"
      , license = "Par Gunther Hasler — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4763131"
      , vernacularName = "Rougequeue noir"
      , binominalName = "Phoenicurus ochruros"
      }
    , { id = "bb202"
      , license = "Par Paolo Bertinetto — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=3710676"
      , vernacularName = "Rousserolle effarvatte"
      , binominalName = "Acrocephalus scirpaceus"
      }
    , { id = "bb203"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=88999"
      , vernacularName = "Rousserolle verderolle"
      , binominalName = "Acrocephalus palustris"
      }
    , { id = "bb204"
      , license = "Par Luciano 95 — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=46102907"
      , vernacularName = "Sarcelle d'été"
      , binominalName = "Anas querquedula"
      }
    , { id = "bb205"
      , license = "Par Christophe Eyquem — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=129830"
      , vernacularName = "Sarcelle d'hiver"
      , binominalName = "Anas crecca"
      }
    , { id = "bb206"
      , license = "Par Smudge 9000 — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=31588232"
      , vernacularName = "Sittelle torchepot"
      , binominalName = "Sitta europaea"
      }
    , { id = "bb207"
      , license = "Par Jyrki Salmi — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=30296090"
      , vernacularName = "Sizerin flammé"
      , binominalName = "Carduelis flammea"
      }
    , { id = "bb208"
      , license = "Par Pierre Dalous — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=23300565"
      , vernacularName = "Spatule blanche"
      , binominalName = "Platalea leucorodia"
      }
    , { id = "bb209"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=4111088"
      , vernacularName = "Sterne pierregarin"
      , binominalName = "Sterna hirundo"
      }
    , { id = "bb210"
      , license = "Par Ludovic Hirlimann — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=45489844"
      , vernacularName = "Tadorne de Belon"
      , binominalName = "Tadorna tadorna"
      }
    , { id = "bb211"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=91380"
      , vernacularName = "Tarier des prés"
      , binominalName = "Saxicola rubetra"
      }
    , { id = "bb212"
      , license = "Par J. Malik — https://commons.wikimedia.org/w/index.php?curid=5679147"
      , vernacularName = "Tarier pâtre"
      , binominalName = "Saxicola rubicola"
      }
    , { id = "bb213"
      , license = "Par Ghislain38 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=24255875"
      , vernacularName = "Tarin des aulnes"
      , binominalName = "Carduelis spinus"
      }
    , { id = "bb214"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=209724"
      , vernacularName = "Tétras lyre"
      , binominalName = "Lyrurus tetrix"
      }
    , { id = "bb215"
      , license = "Par <span class=\"fn value\">\nHans Hillewaert</span> — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=15222118"
      , vernacularName = "Tournepierre à collier"
      , binominalName = "Arenaria interpres"
      }
    , { id = "bb216"
      , license = "Par David King — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=4871549"
      , vernacularName = "Tourterelle des bois"
      , binominalName = "Streptopelia turtur"
      }
    , { id = "bb217"
      , license = "Par Camille Gévaudan — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=31407758"
      , vernacularName = "Tourterelle turque"
      , binominalName = "Streptopelia decaocto"
      }
    , { id = "bb218"
      , license = "Par Philippe Kurlapski — CC BY 1.0, https://commons.wikimedia.org/w/index.php?curid=824357"
      , vernacularName = "Traquet motteux"
      , binominalName = "Oenanthe oenanthe"
      }
    , { id = "bb219"
      , license = "Par Robert Lorch — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2720579"
      , vernacularName = "Troglodyte mignon"
      , binominalName = "Troglodytes troglodytes"
      }
    , { id = "bb220"
      , license = "Par Gidzy — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=6447306"
      , vernacularName = "Vanneau huppé"
      , binominalName = "Vanellus vanellus"
      }
    , { id = "bb221"
      , license = "Par Andreas Trepte — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=6299100"
      , vernacularName = "Verdier d'Europe"
      , binominalName = "Chloris chloris"
      }
    ]
