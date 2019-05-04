module BelgianPlants exposing (belgianPlantsQuiz, binominalPlantsQuiz)

import Array exposing (Array)
import Quiz exposing (DisplayableQuiz, GameOverMsgs, ImgQuizItem, QuizOptions, QuizQa, WildlifeQuizType(..), getImgWildlifeQuiz)


belgianPlantsQuiz : DisplayableQuiz
belgianPlantsQuiz =
    { qas = getImgWildlifeQuiz data Vernacular options
    , options = options
    , uniqName = "BelgianPlants"
    , visibleName = "Botanique"
    }


binominalPlantsQuiz : DisplayableQuiz
binominalPlantsQuiz =
    { qas = getImgWildlifeQuiz data Binominal options
    , options = options
    , uniqName = "BinominalPlants"
    , visibleName = "Plantes (binominal)"
    }


options : QuizOptions
options =
    { prefix = "bp"
    , folder = "belgian_plants"
    , gameOverMsgs = gameOverMsgs
    }


gameOverMsgs : GameOverMsgs
gameOverMsgs =
    { sad =
        "Oh non ! Tu as fané toutes les fleurs avec ce mauvais score..."
    , neutral =
        "Pas mal. Mais ta maîtrise des plantes est comme ces bourgeons: en devenir..."
    , happy =
        "Bravo ! Tu es aussi belle/beau que ces fleurs, mais encore un peu sauvage..."
    , proud =
        "Parfait ! La complexité des fleurs n'a plus aucun secret pour toi..."
    }


data : List ImgQuizItem
data =
    [ { vernacularName = "achillée millefeuille"
      , binominalName = "Achillea millefolium"
      , id = "101"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255484"
      }
    , { vernacularName = "aigremoine eupatoire"
      , binominalName = "Agrimonia eupatoria"
      , id = "102"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2077324"
      }
    , { vernacularName = "ail des ours"
      , binominalName = "Allium ursinum"
      , id = "103"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=2700416"
      }
    , { vernacularName = "alchémille vert jaunâtre"
      , binominalName = "Alchemilla xanthochlora"
      , id = "104"
      , license = "Par H. Zell — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8969769"
      }
    , { vernacularName = "alliaire officinale"
      , binominalName = "Alliaria officinalis"
      , id = "105"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1635878"
      }
    , { vernacularName = "ancolie commune"
      , binominalName = "Aquilegia vulgaris"
      , id = "106"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2041344"
      }
    , { vernacularName = "anémone sylvie"
      , binominalName = "Anemone nemorosa"
      , id = "107"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=452712"
      }
    , { vernacularName = "angélique sauvage"
      , binominalName = "Angelica sylvestris"
      , id = "108"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8842"
      }
    , { vernacularName = "anthrisque"
      , binominalName = "Anthriscus sylvestris"
      , id = "109"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i>; Max Vogtherr; M. Gurke; — Public domain, https://commons.wikimedia.org/w/index.php?curid=255499"
      }
    , { vernacularName = "armoise commune"
      , binominalName = "Artemisia vulgaris"
      , id = "110"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=7569"
      }
    , { vernacularName = "aspérule odorante"
      , binominalName = "Galium odoratum"
      , id = "111"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1669679"
      }
    , { vernacularName = "balsamine de l'Himalaya"
      , binominalName = "Impatiens glandulifera"
      , id = "112"
      , license = "Par Jeantosti — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=4890454"
      }
    , { vernacularName = "balsamine des bois"
      , binominalName = "Impatiens noli-tangere"
      , id = "113"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=17920644"
      }
    , { vernacularName = "bardane (grande)"
      , binominalName = "Arctium lappa"
      , id = "114"
      , license = "Par Christian Fischer — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4470395"
      }
    , { vernacularName = "benoîte commune"
      , binominalName = "Geum urbanum"
      , id = "115"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=731962"
      }
    , { vernacularName = "berce commune"
      , binominalName = "Heracleum sphondylium"
      , id = "116"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8850"
      }
    , { vernacularName = "berce du Caucase"
      , binominalName = "Heracleum mantegazzianum"
      , id = "117"
      , license = "Par Meneerke bloem — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=33440796"
      }
    , { vernacularName = "bleuet des champs"
      , binominalName = "Centaurea cyanus"
      , id = "118"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=936580"
      }
    , { vernacularName = "bouillon blanc"
      , binominalName = "Verbascum thapsus"
      , id = "119"
      , license = "Par Jan Kops — Public domain, https://commons.wikimedia.org/w/index.php?curid=9021420"
      }
    , { vernacularName = "bourse-à-pasteur"
      , binominalName = "Capsella bursa-pastoris"
      , id = "120"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=200875"
      }
    , { vernacularName = "brunelle commune"
      , binominalName = "Prunella vulgaris"
      , id = "121"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27062399"
      }
    , { vernacularName = "bruyère commune"
      , binominalName = "Calluna vulgaris"
      , id = "122"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9572"
      }
    , { vernacularName = "buddléa"
      , binominalName = "Buddleja davidii"
      , id = "123"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1642094"
      }
    , { vernacularName = "bugle rampante"
      , binominalName = "Ajuga reptans"
      , id = "124"
      , license = "Par Patrice78500 — Public domain, https://commons.wikimedia.org/w/index.php?curid=7058235"
      }
    , { vernacularName = "cabaret des oiseaux"
      , binominalName = "Dipsacus fullonum"
      , id = "125"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8885"
      }
    , { vernacularName = "caille-lait blanc"
      , binominalName = "Galium mollugo"
      , id = "126"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=7356"
      }
    , { vernacularName = "campanule à feuilles rondes"
      , binominalName = "Campanula rotundifolia"
      , id = "127"
      , license = "Par Hans Hillewaert — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4750293"
      }
    , { vernacularName = "cardamine des prés"
      , binominalName = "Cardamine pratensis"
      , id = "128"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8626"
      }
    , { vernacularName = "carotte sauvage"
      , binominalName = "Daucus carota"
      , id = "129"
      , license = "Par Alvesgaspar — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4077304"
      }
    , { vernacularName = "chélidoine (grande)"
      , binominalName = "Chelidonium majus"
      , id = "130"
      , license = "Par Bff — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15509008"
      }
    , { vernacularName = "chicorée sauvage"
      , binominalName = "Cichorium intybus"
      , id = "131"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=200885"
      }
    , { vernacularName = "circée de Paris"
      , binominalName = "Circaea lutetiana"
      , id = "132"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=256432"
      }
    , { vernacularName = "cirse des champs"
      , binominalName = "Cirsium arvense"
      , id = "133"
      , license = "Par Richard Bartz — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2619189"
      }
    , { vernacularName = "colchique "
      , binominalName = "Colchicum autumnale"
      , id = "134"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255312"
      }
    , { vernacularName = "compagnon blanc"
      , binominalName = "Silene latifolia"
      , id = "135"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=761411"
      }
    , { vernacularName = "compagnon rouge"
      , binominalName = "Silene dioica"
      , id = "136"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=761444"
      }
    , { vernacularName = "consoude (grande)"
      , binominalName = "Symphytum officinale"
      , id = "137"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8714"
      }
    , { vernacularName = "coquelicot (grand)"
      , binominalName = "Papaver rhoeas"
      , id = "138"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255420"
      }
    , { vernacularName = "cymbalaire"
      , binominalName = "Cymbalaria muralis"
      , id = "139"
      , license = "Par Alois Staudacher — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=32533481"
      }
    , { vernacularName = "digitale jaune"
      , binominalName = "Digitalis lutea"
      , id = "140"
      , license = "Par Bernd Haynold — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=220606"
      }
    , { vernacularName = "digitale pourpre"
      , binominalName = "Digitalis purpurea"
      , id = "141"
      , license = "Par Walther Otto Müller — Public domain, https://commons.wikimedia.org/w/index.php?curid=1815791"
      }
    , { vernacularName = "épervière piloselle"
      , binominalName = "Hieracium pilosella"
      , id = "142"
      , license = "Par Prazak — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=867298"
      }
    , { vernacularName = "épiaire des bois"
      , binominalName = "Stachys sylvatica"
      , id = "143"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=26893216"
      }
    , { vernacularName = "épilobe en épi"
      , binominalName = "Epilobium angustifolium"
      , id = "144"
      , license = "Par Wknight94 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8769905"
      }
    , { vernacularName = "épilobe hirsute"
      , binominalName = "Epilobium hirsutum"
      , id = "145"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2263428"
      }
    , { vernacularName = "eupatoire chanvrine"
      , binominalName = "Eupatorium cannabinum"
      , id = "146"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=385679"
      }
    , { vernacularName = "euphorbe des bois"
      , binominalName = "Euphorbia amygdaloides"
      , id = "147"
      , license = "Par Rasbak — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=134662"
      }
    , { vernacularName = "euphorbe réveil-matin"
      , binominalName = "Euphorbia helioscopia"
      , id = "148"
      , license = "Par Júlio Reis — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=804337"
      }
    , { vernacularName = "ficaire"
      , binominalName = "Ranunculus ficaria"
      , id = "149"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=185660"
      }
    , { vernacularName = "fraisier des bois"
      , binominalName = "Fragaria vesca"
      , id = "150"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9172"
      }
    , { vernacularName = "framboisier"
      , binominalName = "Rubus idaeus"
      , id = "151"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255451"
      }
    , { vernacularName = "gaillet croisette"
      , binominalName = "Cruciata laevipes"
      , id = "152"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=132153"
      }
    , { vernacularName = "gaillet gratteron"
      , binominalName = "Galium aparine"
      , id = "153"
      , license = "Par Prof. Dr. Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=8716633"
      }
    , { vernacularName = "galéopsis tétrahit"
      , binominalName = "Galeopsis tetrahit"
      , id = "154"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27544332"
      }
    , { vernacularName = "genêt à balais"
      , binominalName = "Cytisus scoparius"
      , id = "155"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255542"
      }
    , { vernacularName = "germandrée scorodoine"
      , binominalName = "Teucrium scorodonia"
      , id = "156"
      , license = "Par Aroche — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=1089243"
      }
    , { vernacularName = "gesse des prés"
      , binominalName = "Lathyrus pratensis"
      , id = "157"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=744823"
      }
    , { vernacularName = "gouet tacheté"
      , binominalName = "Arum maculatum"
      , id = "158"
      , license = "Par Prof. Dr. Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=4072077"
      }
    , { vernacularName = "grande pervenche"
      , binominalName = "Vinca major"
      , id = "159"
      , license = "Par JJ Harrison — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7597111"
      }
    , { vernacularName = "gratteron"
      , binominalName = "Galium aparine"
      , id = "160"
      , license = "Par Prof. Dr. Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=8716633"
      }
    , { vernacularName = "gui"
      , binominalName = "Viscum album"
      , id = "161"
      , license = "Par Walther Otto Müller — Public domain, https://commons.wikimedia.org/w/index.php?curid=255641"
      }
    , { vernacularName = "herbe à Robert"
      , binominalName = "Geranium robertianum"
      , id = "162"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=26893210"
      }
    , { vernacularName = "houblon"
      , binominalName = "Humulus lupulus"
      , id = "163"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255347"
      }
    , { vernacularName = "iris jaune"
      , binominalName = "Iris pseudacorus"
      , id = "164"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9103"
      }
    , { vernacularName = "jacinthe des bois"
      , binominalName = "Hyacinthoides non-scripta"
      , id = "165"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=736027"
      }
    , { vernacularName = "jonquille"
      , binominalName = "Narcissus pseudonarcissus"
      , id = "166"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=114664"
      }
    , { vernacularName = "laiteron rude"
      , binominalName = "Sonchus asper"
      , id = "167"
      , license = "Par Epipactis — CC0, https://commons.wikimedia.org/w/index.php?curid=15558153"
      }
    , { vernacularName = "lamier blanc"
      , binominalName = "Lamium album"
      , id = "168"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=737767"
      }
    , { vernacularName = "lamier jaune"
      , binominalName = "Lamium galeobdolon"
      , id = "169"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=737768"
      }
    , { vernacularName = "lamier pourpre"
      , binominalName = "Lamium purpureum"
      , id = "170"
      , license = "Par Unknown artist — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=1862472"
      }
    , { vernacularName = "lierre (grimpant)"
      , binominalName = "Hedera helix"
      , id = "171"
      , license = "Par kenraiz — Public domain, https://commons.wikimedia.org/w/index.php?curid=5197146"
      }
    , { vernacularName = "lierre terrestre"
      , binominalName = "Glechoma hederacea"
      , id = "172"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=5966432"
      }
    , { vernacularName = "linaire commune"
      , binominalName = "Linaria vulgaris"
      , id = "173"
      , license = "https://commons.wikimedia.org/w/index.php?curid=2085760"
      }
    , { vernacularName = "liseron des champs"
      , binominalName = "Convolvulus arvensis"
      , id = "174"
      , license = "Par Unknown artist — Public domain, undefined"
      }
    , { vernacularName = "liseron des haies"
      , binominalName = "Calystegia sepium"
      , id = "175"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27062397"
      }
    , { vernacularName = "lotier corniculé"
      , binominalName = "Lotus corniculatus"
      , id = "176"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=452716"
      }
    , { vernacularName = "luzerne cultivée"
      , binominalName = "Medicago sativa"
      , id = "177"
      , license = "Par Prof. Dr. Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=4068959"
      }
    , { vernacularName = "luzerne lupuline"
      , binominalName = "Medicago lupulina"
      , id = "178"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=145010"
      }
    , { vernacularName = "lychnis fleur de coucou"
      , binominalName = "Lychnis flos-cuculi"
      , id = "179"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8517"
      }
    , { vernacularName = "lysimaque nummulaire"
      , binominalName = "Lysimachia nummularia"
      , id = "180"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=17920639"
      }
    , { vernacularName = "marguerite (grande)"
      , binominalName = "Leucanthemum vulgare"
      , id = "181"
      , license = "Par Magnus Manske — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2207618"
      }
    , { vernacularName = "massette à larges feuilles"
      , binominalName = "Typha latifolia"
      , id = "182"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1609620"
      }
    , { vernacularName = "matricaire discoïde"
      , binominalName = "Matricaria discoidea"
      , id = "183"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27558952"
      }
    , { vernacularName = "mélampyre des prés"
      , binominalName = "Melampyrum pratense"
      , id = "184"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8771"
      }
    , { vernacularName = "mélilot officinal"
      , binominalName = "Melilotus officinalis"
      , id = "185"
      , license = "Par Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=1412291"
      }
    , { vernacularName = "mercuriale vivace"
      , binominalName = "Mercurialis perennis"
      , id = "186"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9332"
      }
    , { vernacularName = "millepertuis perforé"
      , binominalName = "Hypericum perforatum"
      , id = "187"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1669636"
      }
    , { vernacularName = "mouron rouge"
      , binominalName = "Anagallis arvensis"
      , id = "188"
      , license = "Par O. Pichard — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6235614"
      }
    , { vernacularName = "muguet"
      , binominalName = "Convallaria majalis"
      , id = "189"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255313"
      }
    , { vernacularName = "myrtille"
      , binominalName = "Vaccinium myrtillus"
      , id = "190"
      , license = "Par Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=9578"
      }
    , { vernacularName = "nénuphar blanc"
      , binominalName = "Nymphaea alba"
      , id = "191"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=458959"
      }
    , { vernacularName = "nénuphar jaune"
      , binominalName = "Nuphar lutea"
      , id = "192"
      , license = "Par Hans Hillewaert — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6813532"
      }
    , { vernacularName = "onagre bisannuelle"
      , binominalName = "Oenothera biennis"
      , id = "193"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2081914"
      }
    , { vernacularName = "orpin âcre"
      , binominalName = "Sedum acre"
      , id = "194"
      , license = "Par Wilson44691 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15900831"
      }
    , { vernacularName = "orpin blanc"
      , binominalName = "Sedum album"
      , id = "195"
      , license = "Par Bouba — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2535890"
      }
    , { vernacularName = "ortie dioïque"
      , binominalName = "Urtica dioica"
      , id = "196"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2120727"
      }
    , { vernacularName = "oseille sauvage"
      , binominalName = "Rumex acetosa"
      , id = "197"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=5979117"
      }
    , { vernacularName = "oxalis petite oseille"
      , binominalName = "Oxalis acetosella"
      , id = "198"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=455542"
      }
    , { vernacularName = "pâquerette "
      , binominalName = "Bellis perennis"
      , id = "199"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=720792"
      }
    , { vernacularName = "parisette"
      , binominalName = "Paris quadrifolia"
      , id = "200"
      , license = "Par Frédéric — Public domain, https://commons.wikimedia.org/w/index.php?curid=3685596"
      }
    , { vernacularName = "pas d'âne"
      , binominalName = "Tussilago farfara"
      , id = "201"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255476"
      }
    , { vernacularName = "pensée des champs"
      , binominalName = "Viola arvensis"
      , id = "202"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=17920581"
      }
    , { vernacularName = "pensée sauvage"
      , binominalName = "Viola tricolor"
      , id = "203"
      , license = "Par Walther Otto Müller — Public domain, https://commons.wikimedia.org/w/index.php?curid=255640"
      }
    , { vernacularName = "perce-neige"
      , binominalName = "Galanthus nivalis"
      , id = "204"
      , license = "Par Tocekas — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=3728295"
      }
    , { vernacularName = "petite pervenche"
      , binominalName = "Vinca minor"
      , id = "205"
      , license = "Par Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=8606"
      }
    , { vernacularName = "phragmite"
      , binominalName = "Phragmites australis"
      , id = "206"
      , license = "Par Le.Loup.Gris — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16682936"
      }
    , { vernacularName = "plantain à larges feuilles"
      , binominalName = "Plantago major"
      , id = "207"
      , license = "Par Original book source: Prof. Dr. Otto Wilhelm Thomé <i>Flora von Deutschland, Österreich und der Schweiz</i> 1885, Gera, Germany — Public domain, https://commons.wikimedia.org/w/index.php?curid=2818720"
      }
    , { vernacularName = "plantain lancéolé"
      , binominalName = "Plantago lanceolata"
      , id = "208"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=744926"
      }
    , { vernacularName = "populage"
      , binominalName = "Caltha palustris"
      , id = "209"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2266258"
      }
    , { vernacularName = "potentille ansérine"
      , binominalName = "Potentilla anserina"
      , id = "210"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9184"
      }
    , { vernacularName = "potentille rampante"
      , binominalName = "Potentilla reptans"
      , id = "211"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9152"
      }
    , { vernacularName = "prêle des champs"
      , binominalName = "Equisetum arvense"
      , id = "212"
      , license = "Par Walter Siegmund — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8726511"
      }
    , { vernacularName = "primevère élevée"
      , binominalName = "Primula elatior"
      , id = "213"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1665745"
      }
    , { vernacularName = "primevère officinale"
      , binominalName = "Primula veris"
      , id = "214"
      , license = "Par Prof. Dr. Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=4062847"
      }
    , { vernacularName = "pulmonaire officinale"
      , binominalName = "Pulmonaria officinalis"
      , id = "215"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=8715"
      }
    , { vernacularName = "reine-des-prés"
      , binominalName = "Filipendula ulmaria"
      , id = "216"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27165314"
      }
    , { vernacularName = "renoncule âcre"
      , binominalName = "Ranunculus acris"
      , id = "217"
      , license = "Par Original book source:\n<p>Prof. Dr. Otto Wilhelm Thomé <i>Flora von Deutschland, Österreich und der Schweiz</i>\n</p>\n1885, Gera, Germany — Public domain, https://commons.wikimedia.org/w/index.php?curid=3477298"
      }
    , { vernacularName = "renoncule rampante"
      , binominalName = "Ranunculus repens"
      , id = "218"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=449763"
      }
    , { vernacularName = "renouée du Japon"
      , binominalName = "Fallopia japonica"
      , id = "219"
      , license = "Par Pixeltoo — Public domain, https://commons.wikimedia.org/w/index.php?curid=8162716"
      }
    , { vernacularName = "renouée persicaire"
      , binominalName = "Persicaria maculosa"
      , id = "220"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=249988"
      }
    , { vernacularName = "rosier des chiens"
      , binominalName = "Rosa canina"
      , id = "221"
      , license = "Par Amédée Masclef — Public domain, https://commons.wikimedia.org/w/index.php?curid=5771133"
      }
    , { vernacularName = "rossolis à feuilles rondes"
      , binominalName = "Drosera rotundifolia"
      , id = "222"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=108185"
      }
    , { vernacularName = "salicaire commune"
      , binominalName = "Lythrum salicaria"
      , id = "223"
      , license = "Par H. Zell — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10643490"
      }
    , { vernacularName = "salsifis des prés"
      , binominalName = "Tragopogon pratensis"
      , id = "224"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=175049"
      }
    , { vernacularName = "sceau-de-Salomon multiflore"
      , binominalName = "Polygonatum multiflorum"
      , id = "225"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=883011"
      }
    , { vernacularName = "scrofulaire noueuse"
      , binominalName = "Scrophularia nodosa"
      , id = "226"
      , license = "Par Original book source: Prof. Dr. Otto Wilhelm Thomé <i>Flora von Deutschland, Österreich und der Schweiz</i> 1885, Gera, Germany — Public domain, https://commons.wikimedia.org/w/index.php?curid=7047122"
      }
    , { vernacularName = "séneçon commun"
      , binominalName = "Senecio vulgaris"
      , id = "227"
      , license = "Par H. Zell — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=11097718"
      }
    , { vernacularName = "séneçon jacobée"
      , binominalName = "Senecio jacobaea"
      , id = "228"
      , license = "Par Christian Fischer — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2471811"
      }
    , { vernacularName = "stellaire holostée"
      , binominalName = "Stellaria holostea"
      , id = "229"
      , license = "Par Nova — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=523205"
      }
    , { vernacularName = "stellaire intermédiaire"
      , binominalName = "Stellaria media"
      , id = "230"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=936668"
      }
    , { vernacularName = "succise des prés"
      , binominalName = "Succisa pratensis"
      , id = "231"
      , license = "Par Ivar Leidus — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=61619621"
      }
    , { vernacularName = "tabouret des champs"
      , binominalName = "Thlaspi arvense"
      , id = "232"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=505898"
      }
    , { vernacularName = "tanaisie commune"
      , binominalName = "Tanacetum vulgare"
      , id = "233"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27509982"
      }
    , { vernacularName = "trèfle des prés"
      , binominalName = "Trifolium pratense"
      , id = "234"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=449768"
      }
    , { vernacularName = "trèfle rampant"
      , binominalName = "Trifolium repens"
      , id = "235"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9274"
      }
    , { vernacularName = "valériane officinale"
      , binominalName = "Valeriana repens"
      , id = "236"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255477"
      }
    , { vernacularName = "véronique de Perse"
      , binominalName = "Veronica persica"
      , id = "237"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=780041"
      }
    , { vernacularName = "véronique petit-chêne"
      , binominalName = "Veronica chamaedrys"
      , id = "238"
      , license = "Par Roby — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=20455242"
      }
    , { vernacularName = "vesce à épis"
      , binominalName = "Vicia cracca"
      , id = "239"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=787489"
      }
    , { vernacularName = "vesce des haies"
      , binominalName = "Vicia sepium"
      , id = "240"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2232832"
      }
    , { vernacularName = "vipérine commune"
      , binominalName = "Echium vulgare"
      , id = "241"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=936454"
      }
    , { vernacularName = "Ronce commune"
      , binominalName = "Rubus fruticosus"
      , id = "242"
      , license = "Par Jan Kops — Public domain, https://commons.wikimedia.org/w/index.php?curid=18924127"
      }
    , { vernacularName = "Salicorne d'Europe"
      , binominalName = "Salicornia europaea"
      , id = "243"
      , license = "Par Unknown artist — Public domain, https://commons.wikimedia.org/w/index.php?curid=9081"
      }
    , { vernacularName = "Violette odorante"
      , binominalName = "Viola odorata"
      , id = "244"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=723042"
      }
    , { vernacularName = "Violette de Rivinus"
      , binominalName = "Viola riviniana"
      , id = "245"
      , license = "Par Ulrika — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=2058106"
      }
    , { vernacularName = "Pissenlit"
      , binominalName = "Taraxacum"
      , id = "246"
      , license = "Par Walther Otto Müller — Public domain, https://commons.wikimedia.org/w/index.php?curid=255466"
      }
    ]
