module Quiz exposing (QuizItem, QuizQa, belgianBirdsQuiz, latinBirdsQuiz, periodicTableQuiz, pickQuizQa)

import Array
import ArrayHelper


type alias QuizQa =
    { question : String
    , answer : String
    , title : String
    }


type alias QuizItem =
    { qa : QuizQa
    , answers : List String
    }


pickQuizQa : Int -> Array.Array QuizQa -> Array.Array QuizQa -> ( QuizItem, Array.Array QuizQa )
pickQuizQa randomIdx qas allQas =
    let
        ( qa, remainingQas ) =
            ArrayHelper.sliceByIndex qas randomIdx
    in
    ( { qa = Maybe.withDefault { question = "", answer = "", title = "" } qa
      , answers = []
      }
    , remainingQas
    )


periodicTableQuiz : Array.Array QuizQa
periodicTableQuiz =
    Array.fromList
        [ { question = "Hélium", answer = "He", title = "" }
        , { question = "Hydrogène", answer = "H", title = "" }
        , { question = "Lithium", answer = "Li", title = "" }
        , { question = "Béryllium", answer = "Be", title = "" }
        , { question = "Bore", answer = "B", title = "" }
        , { question = "Carbone", answer = "C", title = "" }
        , { question = "Azote", answer = "N", title = "" }
        , { question = "Oxygène", answer = "O", title = "" }
        ]


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
            belgianBirds
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
            belgianBirds
        )


type alias ImgQuizItem =
    { id : String
    , vernacularName : String
    , binominalName : String
    , license : String
    }


belgianBirds : List ImgQuizItem
belgianBirds =
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
      , license = "Par Cymbella — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=21467538"
      }
    , { id = "bb62"
      , vernacularName = "Avocette élégante"
      , binominalName = "Recurvirostra avosetta"
      , license = "Par Andreas Trepte — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=10610115"
      }
    , { id = "bb63"
      , vernacularName = "Balbuzard pêcheur"
      , binominalName = "Pandion haliaetus"
      , license = "Par Yathin S Krishnappa — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=21376478"
      }
    , { id = "bb64"
      , vernacularName = "Bec-croisé des sapins"
      , binominalName = "Loxia curvirostra"
      , license = "Par User:Aelwyn — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2230007"
      }
    , { id = "bb65"
      , vernacularName = "Bécasse des bois"
      , binominalName = "Scolopax rusticola"
      , license = "Par Ronald Slabke — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=5703078"
      }
    , { id = "bb66"
      , vernacularName = "Bécasseau variable"
      , binominalName = "Calidris alpina"
      , license = "Par Jevgenijs Slihto, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=42966339"
      }
    , { id = "bb67"
      , vernacularName = "Bécassine des marais"
      , binominalName = "Gallinago gallinago"
      , license = "Par Pierre DalousLieu — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=21528551"
      }
    , { id = "bb68"
      , vernacularName = "Bergeronnette des ruisseaux"
      , binominalName = "Motacilla cinerea"
      , license = "Par Lip Kee Yap — Flickr: Grey wagtail, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=14637693"
      }
    , { id = "bb69"
      , vernacularName = "Bergeronnette grise"
      , binominalName = "Motacilla alba"
      , license = "Par Andreas Trepte — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=3800685"
      }
    , { id = "bb70"
      , vernacularName = "Bergeronnette printanière"
      , binominalName = "Motacilla flava"
      , license = "Par Andreas Trepte — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=6685421"
      }
    , { id = "bb71"
      , vernacularName = "Bernache du Canada"
      , binominalName = "Branta canadensis"
      , license = "Par Connormah — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27394270"
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
      , license = "Par Andreas Trepte — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=3986639"
      }
    , { id = "bb75"
      , vernacularName = "Busard des roseaux"
      , binominalName = "Circus aeruginosus"
      , license = "Par Sumeet Moghe — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=49477506"
      }
    , { id = "bb76"
      , vernacularName = "Busard Saint-Martin"
      , binominalName = "Circus cyaneus"
      , license = "Par Katy Prairie Conservancy — Travail personnel, Domaine public, https://commons.wikimedia.org/w/index.php?curid=5100533"
      }
    , { id = "bb77"
      , vernacularName = "Buse variable"
      , binominalName = "Buteo buteo"
      , license = "Par Marek Szczepanek — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=90587"
      }
    , { id = "bb78"
      , vernacularName = "Butor étoilé"
      , binominalName = "Botaurus stellaris"
      , license = "Par Marek Szczepanek — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=63238"
      }
    , { id = "bb79"
      , vernacularName = "Canard colvert"
      , binominalName = "Anas platyrhynchos"
      , license = "Par Richard Bartz — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=6449086"
      }
    , { id = "bb80"
      , vernacularName = "Canard pilet"
      , binominalName = "Anas acuta"
      , license = "Par Adam Kumiszcza — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=17692763"
      }
    , { id = "bb81"
      , vernacularName = "Canard souchet"
      , binominalName = "Anas clypeata"
      , license = "Par Andreas Trepte — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=15010945"
      }
    , { id = "bb82"
      , vernacularName = "Cassenoix moucheté"
      , binominalName = "Nucifraga caryocatactes"
      , license = "Par MurrayBHenson — Domaine public, https://commons.wikimedia.org/w/index.php?curid=3708573"
      }
    , { id = "bb83"
      , vernacularName = "Chardonneret élégant"
      , binominalName = "Carduelis carduelis"
      , license = "Par Pierre Dalous — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=22525310"
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
      , license = "Par Marek Szczepanek — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=63227"
      }
    , { id = "bb87"
      , vernacularName = "Chevêche d'Athéna"
      , binominalName = "Athene noctua"
      , license = "Par Tony Wills — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=36442532"
      }
    , { id = "bb88"
      , vernacularName = "Choucas des tours"
      , binominalName = "Coloeus monedula"
      , license = "Par Darkone — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=665741"
      }
    , { id = "bb89"
      , vernacularName = "Chouette hulotte"
      , binominalName = "Strix aluco"
      , license = "Par K.-M. Hansche — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=775782"
      }
    , { id = "bb90"
      , vernacularName = "Cigogne blanche"
      , binominalName = "Ciconia ciconia"
      , license = "Par Dcabrilo — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4675672"
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
      , license = "Par Andreas Trepte — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=19133958"
      }
    , { id = "bb94"
      , vernacularName = "Corneille noire"
      , binominalName = "Corvus corone"
      , license = "Par Loz (L. B. Tettenborn) — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2380746"
      }
    , { id = "bb95"
      , vernacularName = "Coucou gris"
      , binominalName = "Cuculus canorus"
      , license = "Par Vogelartinfoderivative work — GFDL 1.2, https://commons.wikimedia.org/w/index.php?curid=16077960"
      }
    , { id = "bb96"
      , vernacularName = "Courlis cendré"
      , binominalName = "Numenius arquata"
      , license = "Par Ken Billington — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=12307666"
      }
    , { id = "bb97"
      , vernacularName = "Cygne chanteur"
      , binominalName = "Cygnus cygnus"
      , license = "Par Rhion — Domaine public, https://commons.wikimedia.org/w/index.php?curid=450423"
      }
    , { id = "bb98"
      , vernacularName = "Cygne tuberculé"
      , binominalName = "Cygnus olor"
      , license = "Par Sanchezn — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=3019282"
      }
    ]



{-
   Effraie des clochers	Tyto alba
   Épervier d'Europe	Accipiter nisus
   Étourneau sansonnet	Sturnus vulgaris
   Faisan de Colchide	Phasianus colchicus
   Faucon crécerelle	Falco tinnunculus
   Faucon hobereau	Falco subbuteo
   Faucon pèlerin	Falco peregrinus
   Fauvette à tête noire	Sylvia atricapilla
   Fauvette des jardins	Sylvia borin
   Fauvette grisette	Sylvia communis
   Foulque macroule	Fulica atra
   Fuligule milouin	Aythya ferina
   Fuligule morillon	Aythya fuligula
   Gallinule poule-d'eau	Gallinula chloropus
   Garrot à oeil d'or	Bucephala clangula
   Geai des chênes	Garrulus glandarius
   Gobemouche gris	Muscicapa striata
   Gobemouche noir	Ficedula hypoleuca
   Goéland argenté	Larus argentatus
   Goéland brun	Larus fuscus
   Goéland cendré	Larus canus
   Goéland marin	Larus marinus
   Gorgebleue à miroir	Luscinia svecica
   Grand-duc d'Europe	Bubo bubo
   Grand Corbeau	Corvus corax
   Grand Cormoran	Phalacrocorax carbo
   Grande Aigrette	Ardea alba
   Grèbe à cou noir	Podiceps nigricollis
   Grèbe castagneux	Tachybaptus ruficollis
   Grèbe huppé	Podiceps cristatus
   Grimpereau des bois	Certhia familiaris
   Grimpereau des jardins	Certhia brachydactyla
   Grive draine	Turdus viscivorus
   Grive litorne	Turdus pilaris
   Grive mauvis	Turdus iliacus
   Grive musicienne	Turdus philomelos
   Grosbec casse-noyaux	Coccothraustes coccothraustes
   Grue cendrée	Grus grus
   Harle bièvre	Mergus merganser
   Harle piette	Mergellus albellus
   Héron cendré	Ardea cinerea
   Hibou des marais	Asio flammeus
   Hibou moyen-duc	Asio otus
   Hirondelle de fenêtre	Delichon urbicum
   Hirondelle de rivage	Riparia riparia
   Hirondelle de rochers	Ptyonoprogne rupestris
   Hirondelle rustique	Hirundo rustica
   Huîtrier pie	Haematopus ostralegus
   Hypolaïs polyglotte	Hippolais polyglotta
   Jaseur boréal	Bombycilla garrulus
   Linotte mélodieuse	Carduelis cannabina
   Locustelle tachetée	Locustella naevia
   Loriot d'Europe	Oriolus oriolus
   Martin-pêcheur d'Europe	Alcedo atthis
   Martinet noir	Apus apus
   Merle à plastron	Turdus torquatus
   Merle noir	Turdus merula
   Mésange à longue queue	Aegithalos caudatus
   Mésange bleue	Cyanistes caeruleus
   Mésange boréale	Poecile montanus
   Mésange charbonnière	Parus major
   Mésange huppée	Lophophanes cristatus
   Mésange noire	Periparus ater
   Mésange nonnette	Poecile palustris
   Milan noir	Milvus migrans
   Milan royal	Milvus milvus
   Moineau domestique	Passer domesticus
   Moineau friquet	Passer montanus
   Mouette rieuse	Chroicocephalus ridibundus
   Oie cendrée	Anser anser
   Oie rieuse	Anser albifrons
   Ouette d'Égypte	Alopochen aegyptiaca
   Panure à moustaches	Panurus biarmicus
   Perdrix grise	Perdix perdix
   Perruche à collier	Psittacula krameri
   Petit Gravelot	Charadrius dubius
   Pic épeiche	Dendrocopos major
   Pic épeichette	Dendrocopos minor
   Pic mar	Dendrocopos medius
   Pic noir	Dryocopus martius
   Pic vert	Picus viridis
   Pie-grièche écorcheur	Lanius collurio
   Pie-grièche grise	Lanius excubitor
   Pie bavarde	Pica pica
   Pigeon biset	Columba livia
   Pigeon ramier	Columba palumbus
   Pinson des arbres	Fringilla coelebs
   Pinson du Nord	Fringilla montifringilla
   Pipit des arbres	Anthus trivialis
   Pipit farlouse	Anthus pratensis
   Pipit spioncelle	Anthus spinoletta
   Pluvier doré	Pluvialis apricaria
   Pouillot fitis	Phylloscopus trochilus
   Pouillot siffleur	Phylloscopus sibilatrix
   Pouillot véloce	Phylloscopus collybita
   Râle d'eau	Rallus aquaticus
   Râle des genêts	Crex crex
   Roitelet huppé	Regulus regulus
   Roitelet triple-bandeau	Regulus ignicapilla
   Rossignol philomèle	Luscinia megarhynchos
   Rougegorge familier	Erithacus rubecula
   Rougequeue à front blanc	Phoenicurus phoenicurus
   Rougequeue noir	Phoenicurus ochruros
   Rousserolle effarvatte	Acrocephalus scirpaceus
   Rousserolle verderolle	Acrocephalus palustris
   Sarcelle d'été	Anas querquedula
   Sarcelle d'hiver	Anas crecca
   Sittelle torchepot	Sitta europaea
   Sizerin flammé	Carduelis flammea
   Spatule blanche	Platalea leucorodia
   Sterne pierregarin	Sterna hirundo
   Tadorne de Belon	Tadorna tadorna
   Tarier des prés	Saxicola rubetra
   Tarier pâtre	Saxicola rubicola
   Tarin des aulnes	Carduelis spinus
   Tétras lyre	Lyrurus tetrix
   Tournepierre à collier	Arenaria interpres
   Tourterelle des bois	Streptopelia turtur
   Tourterelle turque	Streptopelia decaocto
   Traquet motteux	Oenanthe oenanthe
   Troglodyte mignon	Troglodytes troglodytes
   Vanneau huppé	Vanellus vanellus
   Verdier d'Europe	Chloris chloris
-}
