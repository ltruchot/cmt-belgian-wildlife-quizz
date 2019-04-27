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
belgianInsectsData = [
  {
    vernacularName = "Abeille domestique",
    binominalName = "Apis mellifera",
    id = "101",
    license = "Par Makro Freak — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2202349"
  },
  {
    vernacularName = "Aeshne bleue",
    binominalName = "Aeshna cyanea",
    id = "102",
    license = "Par Aka — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=204505"
  },
  {
    vernacularName = "Anax empereur",
    binominalName = "Anax imperator",
    id = "103",
    license = "Par Frank Vassen — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=43769436"
  },
  {
    vernacularName = "Aurore",
    binominalName = "Anthocharis cardamines",
    id = "104",
    license = "Par Kjetil Fjellheim — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=64270070"
  },
  {
    vernacularName = "Dame",
    binominalName = "Cynthia cardui",
    id = "105",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41260118"
  },
  {
    vernacularName = "Bousier",
    binominalName = "Geotrupes stercorarius",
    id = "106",
    license = "Par Kompak~commonswiki — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=211219"
  },
  {
    vernacularName = "Carabe doré",
    binominalName = "Carabus auratus",
    id = "107",
    license = "Par Didier Descouens — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9934173"
  },
  {
    vernacularName = "Cercope sanguinolent",
    binominalName = "Cercopis vulnerata",
    id = "108",
    license = "Par Richard Bartz — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=4101583"
  },
  {
    vernacularName = "Cétoine dorée",
    binominalName = "Cetonia aurata",
    id = "109",
    license = "Par Didier Descouens — CC BY 4.0, https://commons.wikimedia.org/w/index.php?curid=9972580"
  },
  {
    vernacularName = "Cicindèle champêtre",
    binominalName = "Cicindela campestris",
    id = "110",
    license = "Par Olei — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=207723"
  },
  {
    vernacularName = "Sang",
    binominalName = "Timarcha tenebricosa",
    id = "111",
    license = "Par Fritz Geller-Grimm — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=453339"
  },
  {
    vernacularName = "Criquet à ailes bleues",
    binominalName = "Oedipoda caerulescens",
    id = "112",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=15586266"
  },
  {
    vernacularName = "Coccinelle à 7 points",
    binominalName = "Coccinella septempunctata",
    id = "113",
    license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=128757"
  },
  {
    vernacularName = "Deuil",
    binominalName = "Melanargia galathea",
    id = "114",
    license = "Par Michael Apel — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2372702"
  },
  {
    vernacularName = "Dytique marginé",
    binominalName = "Dytiscus marginalis",
    id = "115",
    license = "Par Reitter_Dytiscus_u.a..jpg — Public domain, https://commons.wikimedia.org/w/index.php?curid=8686832"
  },
  {
    vernacularName = "Flambé",
    binominalName = "Iphiclides podalirius",
    id = "116",
    license = "Par Tbc — Public domain, https://commons.wikimedia.org/w/index.php?curid=97235"
  },
  {
    vernacularName = "Frelon",
    binominalName = "Vespa crabro",
    id = "117",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=10899731"
  },
  {
    vernacularName = "Gazé",
    binominalName = "Aporia crataegi",
    id = "118",
    license = "Par Michael Apel — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2192208"
  },
  {
    vernacularName = "Gerris",
    binominalName = "Gerris lacustris",
    id = "119",
    license = "Par James K. Lindsey — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=1704190"
  },
  {
    vernacularName = "Grand mars changeant",
    binominalName = "Apatura iris",
    id = "120",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41522658"
  },
  {
    vernacularName = "Grande sauterelle verte",
    binominalName = "Tettigonia viridissima",
    id = "121",
    license = "Par User:daniel.ruprecht — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=952783"
  },
  {
    vernacularName = "Grillon des bois",
    binominalName = "Nemobius sylvestris",
    id = "122",
    license = "Par Piet Spaans — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=1600779"
  },
  {
    vernacularName = "Hanneton",
    binominalName = "Melolontha melolontha",
    id = "123",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=15874436"
  },
  {
    vernacularName = "Libellule déprimée",
    binominalName = "Platetrum depressum",
    id = "124",
    license = "Par Tim Bekaert — Public domain, https://commons.wikimedia.org/w/index.php?curid=210236"
  },
  {
    vernacularName = "Volant",
    binominalName = "Lucanus cervus",
    id = "125",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=25239625"
  },
  {
    vernacularName = "Machaon",
    binominalName = "Papilio machaon",
    id = "126",
    license = "Par Gerhard Obermayr — CC BY-SA 2.0 de, https://commons.wikimedia.org/w/index.php?curid=9885486"
  },
  {
    vernacularName = "Mante religieuse",
    binominalName = "Mantis religiosa",
    id = "127",
    license = "Par Alvesgaspar — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2641596"
  },
  {
    vernacularName = "scorpion",
    binominalName = "Panorpa communis",
    id = "128",
    license = "Par GabrielBuissart — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=2496331"
  },
  {
    vernacularName = "Nèpe cendrée",
    binominalName = "Nepa cinerea",
    id = "129",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=36490808"
  },
  {
    vernacularName = "Paon du jour",
    binominalName = "Inachis io",
    id = "130",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41395587"
  },
  {
    vernacularName = "Petite tortue",
    binominalName = "Aglais urticae",
    id = "131",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41320274"
  },
  {
    vernacularName = "Poisson d'argent",
    binominalName = "Lepisma saccharina",
    id = "132",
    license = "Par Sebastian Stabinger — CC BY, https://commons.wikimedia.org/w/index.php?curid=189366"
  },
  {
    vernacularName = "Punaise gendarme",
    binominalName = "Pyrrhocoris apterus",
    id = "133",
    license = "Par Jpbazard — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8294560"
  },
  {
    vernacularName = "Punaise arlequin",
    binominalName = "Graphosoma italicum",
    id = "134",
    license = "Par Fritz Geller-Grimm — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=614317"
  },
  {
    vernacularName = "Sialis de la vase",
    binominalName = "Sialis lutaria",
    id = "135",
    license = "Par Unknown artist — Attribution, https://commons.wikimedia.org/w/index.php?curid=871677"
  },
  {
    vernacularName = "Sirex géant",
    binominalName = "Urocerus gigas",
    id = "136",
    license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=268572"
  },
  {
    vernacularName = "Trichie fasciée",
    binominalName = "Trichius fasciatus",
    id = "137",
    license = "Par Didier Descouens — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=26904952"
  },
  {
    vernacularName = "Vulcain",
    binominalName = "Vanessa atalanta",
    id = "138",
    license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41180640"
  }]
