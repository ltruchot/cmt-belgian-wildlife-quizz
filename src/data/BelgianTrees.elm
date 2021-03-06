module BelgianTrees exposing (belgianTreesQuiz, binominalTreesQuiz)

import Array exposing (Array)
import Quiz exposing (DisplayableQuiz, GameOverMsgs, ImgQuizItem, QuizOptions, QuizQa, WildlifeQuizType(..), getImgWildlifeQuiz)


belgianTreesQuiz : DisplayableQuiz
belgianTreesQuiz =
    { qas = getImgWildlifeQuiz data Vernacular options
    , options = options
    , uniqName = "BelgianTrees"
    , visibleName = "Dendrologie"
    }


binominalTreesQuiz : DisplayableQuiz
binominalTreesQuiz =
    { qas = getImgWildlifeQuiz data Binominal options
    , options = options
    , uniqName = "BinominalTrees"
    , visibleName = "Arbres (binominal)"
    }


options : QuizOptions
options =
    { prefix = "bt"
    , folder = "belgian_trees"
    , gameOverMsgs = gameOverMsgs
    }


gameOverMsgs : GameOverMsgs
gameOverMsgs =
    { sad =
        "Oh non ! Tu as encore fait pleurer le saule..."
    , neutral =
        "L'arbre de tes connaissances n'a pas beaucoup de branches..."
    , happy =
        "Bravo ! Tes connaissances semblent assez solides."
    , proud =
        "Parfait ! Tu as atteint la majesté suprême des arbres."
    }


data : List ImgQuizItem
data =
    [ { vernacularName = "Alisier torminal"
      , binominalName = "Sorbus torminalis"
      , id = "101"
      , license = "Par Andrew Dunn — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=143088"
      }
    , { vernacularName = "Alouchier"
      , binominalName = "Sorbus aria"
      , id = "102"
      , license = "Par SBT — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2409443"
      }
    , { vernacularName = "Aubépine à un style"
      , binominalName = "Crataegus monogyna"
      , id = "103"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=72606"
      }
    , { vernacularName = "Aubépine à deux styles"
      , binominalName = "Crataegus laevigata"
      , id = "104"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=1411013"
      }
    , { vernacularName = "Aulne blanc"
      , binominalName = "Alnus incana"
      , id = "105"
      , license = "Par Quadell — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=59826"
      }
    , { vernacularName = "Aulne glutineux"
      , binominalName = "Alnus glutinosa"
      , id = "106"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=936543"
      }
    , { vernacularName = "Bouleau pubescent"
      , binominalName = "Betula alba"
      , id = "107"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9591"
      }
    , { vernacularName = "Bouleau verruqueux"
      , binominalName = "Betula pendula"
      , id = "108"
      , license = "Par Jordgubbe — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=207439"
      }
    , { vernacularName = "Bourdaine"
      , binominalName = "Frangula alnus"
      , id = "109"
      , license = "Par Walther Otto Müller — Public domain, https://commons.wikimedia.org/w/index.php?curid=255446"
      }
    , { vernacularName = "Buis"
      , binominalName = "Buxus sempervirens"
      , id = "110"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=3429174"
      }
    , { vernacularName = "Cerisier à grappes"
      , binominalName = "Prunus padus"
      , id = "111"
      , license = "Par Nova — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=752620"
      }
    , { vernacularName = "Cerisier tardif"
      , binominalName = "Prunus serotina"
      , id = "112"
      , license = "Par Rasbak — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=163707"
      }
    , { vernacularName = "Charme"
      , binominalName = "Carpinus betulus"
      , id = "113"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=1986567"
      }
    , { vernacularName = "Châtaignier"
      , binominalName = "Castanea sativa"
      , id = "114"
      , license = "Par User:Kilom691 — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2062908"
      }
    , { vernacularName = "Chêne pédonculé"
      , binominalName = "Quercus robur"
      , id = "115"
      , license = "Par Adam Hauner — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=3264227"
      }
    , { vernacularName = "Chêne pubescent"
      , binominalName = "Quercus pubescens"
      , id = "116"
      , license = "Par Etrusko25 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9067195"
      }
    , { vernacularName = "Chêne rouge (d'Amérique)"
      , binominalName = "Quercus rubra"
      , id = "117"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=211084"
      }
    , { vernacularName = "Chêne sessile"
      , binominalName = "Quercus petraea"
      , id = "118"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255443"
      }
    , { vernacularName = "Chèvrefeuille"
      , binominalName = "Lonicera periclymenum"
      , id = "119"
      , license = "Par Svdmolen — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=2433572"
      }
    , { vernacularName = "Clématite des haies"
      , binominalName = "Clematis vitalba"
      , id = "120"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1673382"
      }
    , { vernacularName = "Cornouiller mâle"
      , binominalName = "Cornus mas"
      , id = "121"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=723978"
      }
    , { vernacularName = "Cornouiller sanguin"
      , binominalName = "Cornus sanguinea"
      , id = "122"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=4111724"
      }
    , { vernacularName = "Douglas"
      , binominalName = "Pseudotsuga menziesii"
      , id = "123"
      , license = "Par Walter Siegmund — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=5931511"
      }
    , { vernacularName = "Églantier"
      , binominalName = "Rosa canina"
      , id = "124"
      , license = "Par Amédée Masclef — Public domain, https://commons.wikimedia.org/w/index.php?curid=5771133"
      }
    , { vernacularName = "Épicéa commun"
      , binominalName = "Picea abies"
      , id = "125"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2077456"
      }
    , { vernacularName = "Érable champêtre"
      , binominalName = "Acer campestre"
      , id = "126"
      , license = "Par Sten Porse — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=11688"
      }
    , { vernacularName = "Érable plane"
      , binominalName = "Acer platanoides"
      , id = "127"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=2062303"
      }
    , { vernacularName = "Érable sycomore"
      , binominalName = "Acer pseudoplatanus"
      , id = "128"
      , license = "Par user:MPF — Public domain, https://commons.wikimedia.org/w/index.php?curid=659089"
      }
    , { vernacularName = "Frêne commun"
      , binominalName = "Fraxinus excelsior"
      , id = "129"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=185593"
      }
    , { vernacularName = "Fusain d'Europe"
      , binominalName = "Evonymus europaeus"
      , id = "130"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2272334"
      }
    , { vernacularName = "Genévrier commun"
      , binominalName = "Juniperus communis"
      , id = "131"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=19258"
      }
    , { vernacularName = "Groseillier épineux"
      , binominalName = "Ribes uva-crispa"
      , id = "132"
      , license = "Par Uwe Hermann — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=130025"
      }
    , { vernacularName = "Groseillier noir"
      , binominalName = "Ribes nigrum"
      , id = "133"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=269204"
      }
    , { vernacularName = "Groseillier rouge"
      , binominalName = "Ribes rubrum"
      , id = "134"
      , license = "Par Hedwig Storch — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7128470"
      }
    , { vernacularName = "Hêtre "
      , binominalName = "Fagus sylvatica"
      , id = "135"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255332"
      }
    , { vernacularName = "Houx"
      , binominalName = "Ilex aquifolium"
      , id = "136"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9360"
      }
    , { vernacularName = "If"
      , binominalName = "Taxus baccata"
      , id = "137"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=457198"
      }
    , { vernacularName = "Lierre"
      , binominalName = "Hedera helix"
      , id = "138"
      , license = "Par kenraiz — Public domain, https://commons.wikimedia.org/w/index.php?curid=5197146"
      }
    , { vernacularName = "Marronnier d'Inde"
      , binominalName = "Aesculus hippocastanum"
      , id = "139"
      , license = "Par Ala z — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2171768"
      }
    , { vernacularName = "Mélèze d'Europe"
      , binominalName = "Larix decidua"
      , id = "140"
      , license = "Par Maurice Perry — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=9798605"
      }
    , { vernacularName = "Merisier"
      , binominalName = "Prunus avium"
      , id = "141"
      , license = "Par Prazak — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=773355"
      }
    , { vernacularName = "Néflier"
      , binominalName = "Mespilus germanica"
      , id = "142"
      , license = "Par Montilre — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16013834"
      }
    , { vernacularName = "Nerprun purgatif"
      , binominalName = "Rhamnus cathartica"
      , id = "143"
      , license = "Par Xemenendura — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=22254088"
      }
    , { vernacularName = "Noisetier"
      , binominalName = "Corylus avellana"
      , id = "144"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2085896"
      }
    , { vernacularName = "Noyer royal"
      , binominalName = "Juglans regia"
      , id = "145"
      , license = "Par Otto Wilhelm Thom&amp;eacute — Public domain, https://commons.wikimedia.org/w/index.php?curid=1834332"
      }
    , { vernacularName = "Peuplier tremble"
      , binominalName = "Populus tremula"
      , id = "146"
      , license = "Par Mav — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=6246230"
      }
    , { vernacularName = "Pin sylvestre"
      , binominalName = "Pinus sylvestris"
      , id = "147"
      , license = "Par Lee Carson on Flickr — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=6315280"
      }
    , { vernacularName = "Poirier sauvage"
      , binominalName = "Pyrus pyraster"
      , id = "148"
      , license = "Par Rosser1954 — Public domain, https://commons.wikimedia.org/w/index.php?curid=3986077"
      }
    , { vernacularName = "Pommier sauvage"
      , binominalName = "Malus sylvestris"
      , id = "149"
      , license = "Par Sten Porse — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=604899"
      }
    , { vernacularName = "Prunellier"
      , binominalName = "Prunus spinosa"
      , id = "150"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=1410818"
      }
    , { vernacularName = "Robinier faux-acacia"
      , binominalName = "Robinia pseudoacacia"
      , id = "151"
      , license = "Par 4028mdk09 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10413486"
      }
    , { vernacularName = "Sapin pectiné"
      , binominalName = "Abies alba"
      , id = "152"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2066316"
      }
    , { vernacularName = "Saule blanc"
      , binominalName = "Salix alba"
      , id = "153"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8799"
      }
    , { vernacularName = "Saule marsault"
      , binominalName = "Salix caprea"
      , id = "154"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8793"
      }
    , { vernacularName = "Sorbier des oiseleurs"
      , binominalName = "Sorbus aucuparia"
      , id = "155"
      , license = "Par Walter Müller — Public domain, https://commons.wikimedia.org/w/index.php?curid=9182"
      }
    , { vernacularName = "Sureau à grappes"
      , binominalName = "Sambucus racemosa"
      , id = "156"
      , license = "Par [1] — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=5520"
      }
    , { vernacularName = "Sureau noir"
      , binominalName = "Sambucus nigra"
      , id = "157"
      , license = "Par Willow — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=2643905"
      }
    , { vernacularName = "Symphorine "
      , binominalName = "Symphoricarpos albus"
      , id = "158"
      , license = "Par ArtMechanic — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=202438"
      }
    , { vernacularName = "Tilleul à grandes feuilles"
      , binominalName = "Tilia platyphyllos"
      , id = "159"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=767495"
      }
    , { vernacularName = "Tilleul à petites feuilles"
      , binominalName = "Tilia cordata"
      , id = "160"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255471"
      }
    , { vernacularName = "Troène commun"
      , binominalName = "Ligustrum vulgare"
      , id = "161"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=184962"
      }
    , { vernacularName = "Troène des haies"
      , binominalName = "Ligustrum ovalifolium"
      , id = "162"
      , license = "Par MPF — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=983054"
      }
    , { vernacularName = "Viorne mancienne"
      , binominalName = "Viburnum lantana"
      , id = "163"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1651544"
      }
    , { vernacularName = "Viorne obier"
      , binominalName = "Viburnum opulus"
      , id = "164"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9117"
      }
    ]
