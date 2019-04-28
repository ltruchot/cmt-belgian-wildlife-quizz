module BelgianInsects exposing (belgianInsectsOptions, belgianInsectsQuiz, latinInsectsQuiz)

import Array exposing (Array)
import Quiz exposing (GameOverMsgs, ImgQuizItem, QuizOptions, QuizQa, WildlifeQuizType(..), getImgWildlifeQuiz)


insectsGameOverMsgs : GameOverMsgs
insectsGameOverMsgs =
    { sad =
        "Oh non ! Tu as rendu la petite araignée toute triste..."
    , neutral =
        "Pas mal. Mais ça n'arrêtera pas la fourmi dans son travail."
    , happy =
        "Bravo ! Tu as gagné un grand sourire."
    , proud =
        "Parfait ! Tu as compris toute la complexité du monde des insectes."
    }


belgianInsectsOptions : QuizOptions
belgianInsectsOptions =
    { prefix = "bi"
    , folder = "belgian_insects"
    , gameOverMsgs = insectsGameOverMsgs
    }


belgianInsectsQuiz : Array QuizQa
belgianInsectsQuiz =
    getImgWildlifeQuiz belgianInsectsData Vernacular belgianInsectsOptions


latinInsectsQuiz : Array QuizQa
latinInsectsQuiz =
    getImgWildlifeQuiz belgianInsectsData Binominal belgianInsectsOptions


belgianInsectsData : List ImgQuizItem
belgianInsectsData =
    [ { vernacularName = "Abeille domestique"
      , binominalName = "Apis mellifera"
      , id = "101"
      , license = "Par Makro Freak — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2202349"
      }
    , { vernacularName = "Aeshne bleue"
      , binominalName = "Aeshna cyanea"
      , id = "102"
      , license = "Par Aka — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=204505"
      }
    , { vernacularName = "Anax empereur"
      , binominalName = "Anax imperator"
      , id = "103"
      , license = "Par Frank Vassen — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=43769436"
      }
    , { vernacularName = "Aurore"
      , binominalName = "Anthocharis cardamines"
      , id = "104"
      , license = "Par Kjetil Fjellheim — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=64270070"
      }
    , { vernacularName = "Belle-Dame"
      , binominalName = "Cynthia cardui"
      , id = "105"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41260118"
      }
    , { vernacularName = "Bousier"
      , binominalName = "Geotrupes stercorarius"
      , id = "106"
      , license = "Par Kompak~commonswiki — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=211219"
      }
    , { vernacularName = "Carabe doré"
      , binominalName = "Carabus auratus"
      , id = "107"
      , license = "Par Didier Descouens — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9934173"
      }
    , { vernacularName = "Cercope sanguinolent"
      , binominalName = "Cercopis vulnerata"
      , id = "108"
      , license = "Par Richard Bartz — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=4101583"
      }
    , { vernacularName = "Cétoine dorée"
      , binominalName = "Cetonia aurata"
      , id = "109"
      , license = "Par Didier Descouens — CC BY 4.0, https://commons.wikimedia.org/w/index.php?curid=9972580"
      }
    , { vernacularName = "Cicindèle champêtre"
      , binominalName = "Cicindela campestris"
      , id = "110"
      , license = "Par Olei — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=207723"
      }
    , { vernacularName = "Crache-Sang"
      , binominalName = "Timarcha tenebricosa"
      , id = "111"
      , license = "Par Fritz Geller-Grimm — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=453339"
      }
    , { vernacularName = "Criquet à ailes bleues"
      , binominalName = "Oedipoda caerulescens"
      , id = "112"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=15586266"
      }
    , { vernacularName = "Coccinelle à 7 points"
      , binominalName = "Coccinella septempunctata"
      , id = "113"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=128757"
      }
    , { vernacularName = "Demi-Deuil"
      , binominalName = "Melanargia galathea"
      , id = "114"
      , license = "Par Michael Apel — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2372702"
      }
    , { vernacularName = "Dytique marginé"
      , binominalName = "Dytiscus marginalis"
      , id = "115"
      , license = "Par Reitter_Dytiscus_u.a..jpg — Public domain, https://commons.wikimedia.org/w/index.php?curid=8686832"
      }
    , { vernacularName = "Flambé"
      , binominalName = "Iphiclides podalirius"
      , id = "116"
      , license = "Par Tbc — Public domain, https://commons.wikimedia.org/w/index.php?curid=97235"
      }
    , { vernacularName = "Frelon"
      , binominalName = "Vespa crabro"
      , id = "117"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=10899731"
      }
    , { vernacularName = "Gazé"
      , binominalName = "Aporia crataegi"
      , id = "118"
      , license = "Par Michael Apel — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2192208"
      }
    , { vernacularName = "Gerris"
      , binominalName = "Gerris lacustris"
      , id = "119"
      , license = "Par James K. Lindsey — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=1704190"
      }
    , { vernacularName = "Grand mars changeant"
      , binominalName = "Apatura iris"
      , id = "120"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41522658"
      }
    , { vernacularName = "Grande sauterelle verte"
      , binominalName = "Tettigonia viridissima"
      , id = "121"
      , license = "Par User:daniel.ruprecht — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=952783"
      }
    , { vernacularName = "Grillon des bois"
      , binominalName = "Nemobius sylvestris"
      , id = "122"
      , license = "Par Piet Spaans — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=1600779"
      }
    , { vernacularName = "Hanneton"
      , binominalName = "Melolontha melolontha"
      , id = "123"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=15874436"
      }
    , { vernacularName = "Libellule déprimée"
      , binominalName = "Platetrum depressum"
      , id = "124"
      , license = "Par Tim Bekaert — Public domain, https://commons.wikimedia.org/w/index.php?curid=210236"
      }
    , { vernacularName = "Lucane cerf-volant"
      , binominalName = "Lucanus cervus"
      , id = "125"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=25239625"
      }
    , { vernacularName = "Machaon"
      , binominalName = "Papilio machaon"
      , id = "126"
      , license = "Par Gerhard Obermayr — CC BY-SA 2.0 de, https://commons.wikimedia.org/w/index.php?curid=9885486"
      }
    , { vernacularName = "Mante religieuse"
      , binominalName = "Mantis religiosa"
      , id = "127"
      , license = "Par Alvesgaspar — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2641596"
      }
    , { vernacularName = "Mouche-scorpion"
      , binominalName = "Panorpa communis"
      , id = "128"
      , license = "Par GabrielBuissart — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=2496331"
      }
    , { vernacularName = "Nèpe cendrée"
      , binominalName = "Nepa cinerea"
      , id = "129"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=36490808"
      }
    , { vernacularName = "Paon du jour"
      , binominalName = "Inachis io"
      , id = "130"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41395587"
      }
    , { vernacularName = "Petite tortue"
      , binominalName = "Aglais urticae"
      , id = "131"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41320274"
      }
    , { vernacularName = "Poisson d'argent"
      , binominalName = "Lepisma saccharina"
      , id = "132"
      , license = "Par Sebastian Stabinger — CC BY, https://commons.wikimedia.org/w/index.php?curid=189366"
      }
    , { vernacularName = "Punaise gendarme"
      , binominalName = "Pyrrhocoris apterus"
      , id = "133"
      , license = "Par Jpbazard — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8294560"
      }
    , { vernacularName = "Punaise arlequin"
      , binominalName = "Graphosoma italicum"
      , id = "134"
      , license = "Par Fritz Geller-Grimm — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=614317"
      }
    , { vernacularName = "Sialis de la vase"
      , binominalName = "Sialis lutaria"
      , id = "135"
      , license = "Par Unknown artist — Attribution, https://commons.wikimedia.org/w/index.php?curid=871677"
      }
    , { vernacularName = "Sirex géant"
      , binominalName = "Urocerus gigas"
      , id = "136"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=268572"
      }
    , { vernacularName = "Trichie fasciée"
      , binominalName = "Trichius fasciatus"
      , id = "137"
      , license = "Par Didier Descouens — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=26904952"
      }
    , { vernacularName = "Vulcain"
      , binominalName = "Vanessa atalanta"
      , id = "138"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41180640"
      }
    , { vernacularName = "Agrion"
      , binominalName = "Ischnura elegans"
      , id = "139"
      , license = "Par Thomas Bresson — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=6726502"
      }
    , { vernacularName = "Blatte"
      , binominalName = "Blattella germanica"
      , id = "140"
      , license = "Par David Monniaux — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1611434"
      }
    , { vernacularName = "Bombyle"
      , binominalName = "Bombylius major"
      , id = "141"
      , license = "Par Unknown artist — GPL, https://commons.wikimedia.org/w/index.php?curid=168876"
      }
    , { vernacularName = "Bourdon"
      , binominalName = "Bombus lucorum"
      , id = "142"
      , license = "Par Ivar Leidus — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=42305170"
      }
    , { vernacularName = "Caloptéryx"
      , binominalName = "Calopteryx virgo"
      , id = "143"
      , license = "Par Zeynel Cebeci — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=26976515"
      }
    , { vernacularName = "Charançon"
      , binominalName = "Sitophilus oryzae"
      , id = "144"
      , license = "Par Olaf Leillinger — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=1550147"
      }
    , { vernacularName = "Chrysope"
      , binominalName = "Nothochrysa fulviceps"
      , id = "145"
      , license = "Par Siga — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4571723"
      }
    , { vernacularName = "Éphémère"
      , binominalName = "Ephemera danica"
      , id = "146"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=243854"
      }
    , { vernacularName = "Fourmi"
      , binominalName = "Solenopsis invicta"
      , id = "147"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=326305"
      }
    , { vernacularName = "Guêpe"
      , binominalName = "Vespula germanica"
      , id = "148"
      , license = "Par Unknown artist — GFDL 1.2, https://commons.wikimedia.org/w/index.php?curid=1931193"
      }
    , { vernacularName = "Ichneumon"
      , binominalName = "Ichneumon suspiciosus"
      , id = "149"
      , license = "Par AfroBrazilian — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=26536367"
      }
    , { vernacularName = "Mouche"
      , binominalName = "Musca domestica"
      , id = "150"
      , license = "Par Muhammad Mahdi Karim — GFDL 1.2, https://commons.wikimedia.org/w/index.php?curid=7672794"
      }
    , { vernacularName = "Moustique"
      , binominalName = "Aedes albopictus"
      , id = "151"
      , license = "Par James Gathany, CDC — Public domain, https://commons.wikimedia.org/w/index.php?curid=3670049"
      }
    , { vernacularName = "Perce-oreilles"
      , binominalName = "Forficula smyrnensis"
      , id = "152"
      , license = "Par Assafn — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=2108658"
      }
    , { vernacularName = "Puceron"
      , binominalName = "Calaphis flava"
      , id = "153"
      , license = "Par Sanjay ach — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2233748"
      }
    , { vernacularName = "Scolyte"
      , binominalName = "Scolytus multistriatus"
      , id = "154"
      , license = "Par Emil Hochdanz — Public domain, https://commons.wikimedia.org/w/index.php?curid=4972896"
      }
    , { vernacularName = "Sphinx"
      , binominalName = "Proserpinus flavofasciata"
      , id = "155"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=46946117"
      }
    , { vernacularName = "Staphylin"
      , binominalName = "Paederus littoralis"
      , id = "156"
      , license = "Par Lmbuga — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10560364"
      }
    , { vernacularName = "Syrphe"
      , binominalName = "Episyrphus balteatus"
      , id = "157"
      , license = "Par Aka — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=221925"
      }
    , { vernacularName = "Taon"
      , binominalName = "Chrysops relictus"
      , id = "158"
      , license = "Par Eric Steinert — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=193492"
      }
    , { vernacularName = "Taupin"
      , binominalName = "Agriotes lineatus"
      , id = "159"
      , license = "Par Darius Bauzys — Attribution, https://commons.wikimedia.org/w/index.php?curid=4202052"
      }
    , { vernacularName = "Tipule"
      , binominalName = "Tipula oleracea"
      , id = "160"
      , license = "Par James K. Lindsey — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=1971398"
      }
    , { vernacularName = "Zygène"
      , binominalName = "Zygaena trifolii"
      , id = "161"
      , license = "Par Frank Vassen — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=17018534"
      }
    , { vernacularName = "Perle"
      , binominalName = "Perlinella drymo"
      , id = "162"
      , license = "Travail personnel —  Domaine public, https://commons.wikimedia.org/w/index.php?curid=423626"
      }
    ]
