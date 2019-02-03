module Quiz exposing (QuizItem, QuizQa, belgianBirdsQuiz, periodicTableQuiz, pickQuizQa)

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
                { question = "assets/img/belgian_birds/resized/" ++ bird.id ++ ".jpg"
                , answer = bird.vernacularName
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
      , license = "Par Karstenderivative work: Wenkbrauwalbatros (talk) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7023601"
      }
    , { id = "bb60"
      , vernacularName = "Alouette des champs"
      , binominalName = "Alauda arvensis"
      , license = "Par Daniel Pettersson — Picture taken by Daniel Pettersson. Uploaded to commons by oskila with his permission. File taken from http://www.fagelfoto.se, CC BY-SA 2.5 se, https://commons.wikimedia.org/w/index.php?curid=1722926"
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
      , license = "Par Jevgenijs Slihto from Riga, Latvia — Dunlin, CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=42966339"
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
      , license = "Par Francis C. Franklin / CC-BY-SA-3.0, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=37675952"
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
    
    ]

{- 
Canard colvert	Anas platyrhynchos
Canard pilet	Anas acuta
Canard souchet	Anas clypeata
Cassenoix moucheté	Nucifraga caryocatactes
Chardonneret élégant	Carduelis carduelis
Chevalier culblanc	Tringa ochropus
Chevalier gambette	Tringa totanus
Chevalier guignette	Actitis hypoleucos
Chevêche d'Athéna	Athene noctua
Choucas des tours	Coloeus monedula
Chouette hulotte	Strix aluco
Cigogne blanche	Ciconia ciconia
Cigogne noire	Ciconia nigra
Cincle plongeur	Cinclus cinclus
Corbeau freux	Corvus frugilegus
Corneille noire	Corvus corone
Coucou gris	Cuculus canorus
Courlis cendré	Numenius arquata
Cygne chanteur	Cygnus cygnus
Cygne tuberculé	Cygnus olor 
-}